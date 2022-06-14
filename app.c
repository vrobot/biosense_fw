/***************************************************************************//**
 * @file
 * @brief Core application logic.
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/
#include <stdio.h>

#include "em_common.h"
#include "app_assert.h"
#include "sl_bluetooth.h"
#include "gatt_db.h"
#include "app.h"

#include "em_gpio.h"
#include "gpiointerrupt.h"

#include "ustimer.h"
#include "sl_sleeptimer.h"

#include "em_gpio.h"
#include "em_device.h"
#include "em_wdog.h"
#include "em_emu.h"
#include "em_cmu.h"
#include "em_rmu.h"
#include "em_chip.h"
#include "em_system.h"

#include "spidrv.h"
#include "bma490l.h"
#include "bma490l_main.h"
#include "wdog_init.h"

// The advertising set handle allocated from Bluetooth stack.
static uint8_t advertising_set_handle = 0xff;
static uint8_t _conn_handle = 0xFF;

sl_sleeptimer_timer_handle_t periodic_1_sec_timer;  // used for timeout check and watchdog clear

// WDOG
#define WDOG 2
#define TIMEOUT 3
#define BMA490L_ECODE 1

uint8_t bma490l_on = 0;
volatile uint64_t time = 0;
volatile uint8_t wdog_ticks = 0;

unsigned long resetCause;
volatile uint32_t msTicks; // counts 1ms timeTicks

void SysTick_Handler(void)
{
  // increment counter necessary in Delay()
  msTicks++;
}

// Initializes the GPIO pins
void gpioSetup(void)
{
  GPIOINT_Init();
  return;
}

// Prints the Device name on the console
void print_devname(char* name, uint8_t *adr)
{
    sprintf(name+12, "%03d", adr[0]);
    sprintf(name+15, "%03d", adr[1]);
    sprintf(name+18, "%s", " v9");
}

// Used to turn off the sensor
void BMA490L_turnoff(void)
{
  GPIO_PinModeSet(gpioPortC, 2, gpioModePushPull, 0);
}

// Blinks the onboard LED once
void ledToggle(void)
{
  GPIO_PinModeSet(gpioPortB, 0, gpioModePushPull, 1); // Turn on LED
  USTIMER_Delay(500000);
  GPIO_PinModeSet(gpioPortB, 0, gpioModePushPull, 0); // Turn off LED
}

void timerInterruptBMA490L(void)
{
  sl_bt_external_signal(TIMEOUT);
}

void timeout_check(void)
{
  uint8_t ecode_bma490l = BMA490L_ECODE;
  wdog_ticks++;
  if (wdog_ticks == 10)
  {
      sl_bt_external_signal(WDOG);
      wdog_ticks = 0;
  }
  if (bma490l_on)
  {
      if ((sl_sleeptimer_get_tick_count64() - time) > 32768*5) // 1sec = 32768 ticks
      {
#if ((ACTIVITY_AVG == 0) || (TEST_MODE == 1))
          //send bluetooth data error code
           sl_status_t result;
           do{
               result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_err_code_service, 1, &ecode_bma490l);
             } while (SL_STATUS_OK != result);
#endif
           time = sl_sleeptimer_get_tick_count64();

           BMA490L_Disable();
           USTIMER_Delay(100000);
           BMA490L_Enable();
           USTIMER_Delay(100000);
           spi_init();
       }
   }
}

void advertiser_start(void)
{
  sl_status_t sc;
  // Start general advertising and enable connections.
  sc = sl_bt_advertiser_start(
  advertising_set_handle,
  advertiser_general_discoverable,
  advertiser_connectable_scannable);

  app_assert(sc == SL_STATUS_OK,
              "[E: 0x%04x] Failed to start advertising\n",
              (int)sc);

}
/**************************************************************************//**
 * Application Init.
 *****************************************************************************/
SL_WEAK void app_init(void)
{
  /////////////////////////////////////////////////////////////////////////////
  // Put your additional application init code here!                         //
  // This is called once during start-up.                                    //
  /////////////////////////////////////////////////////////////////////////////

  resetCause = RMU_ResetCauseGet();
  RMU_ResetCauseClear();
  if (SysTick_Config(CMU_ClockFreqGet(cmuClock_CORE) / 1000))
  {
      while (1);
  }

  USTIMER_Init();
  sl_sleeptimer_init();
  gpioSetup();

#if ((ACTIVITY_AVG == 1) || (TEST_MODE == 1))
      for(int i = 0; i < NUM_FILTERS; i++)
      {
          arm_biquad_cascade_df1_init_f32(&Sx[i], numStages[i], coeff[i], buff_x[i]);
          arm_biquad_cascade_df1_init_f32(&Sy[i], numStages[i], coeff[i], buff_y[i]);
          arm_biquad_cascade_df1_init_f32(&Sz[i], numStages[i], coeff[i], buff_z[i]);
      }
#endif
}

/**************************************************************************//**
 * Application Process Action.
 *****************************************************************************/
SL_WEAK void app_process_action(void)
{
  /////////////////////////////////////////////////////////////////////////////
  // Put your additional application code here!                              //
  // This is called infinitely.                                              //
  // Do not call blocking functions from here!                               //
  /////////////////////////////////////////////////////////////////////////////
}

/**************************************************************************//**
 * Bluetooth stack event handler.
 * This overrides the dummy weak implementation.
 *
 * @param[in] evt Event coming from the Bluetooth stack.
 *****************************************************************************/
void sl_bt_on_event(sl_bt_msg_t *evt)
{
  sl_status_t sc;
  bd_addr address;
  uint8_t address_type;
  uint8_t system_id[8];

  char devname[18] = "BIOSEN-prod-";

  int16_t setmin;
  int16_t setmax;


  switch (SL_BT_MSG_ID(evt->header)) {
    // -------------------------------
    // This event indicates the device has started and the radio is ready.
    // Do not call any stack command before receiving this boot event!
    case sl_bt_evt_system_boot_id:

      sl_bt_system_set_tx_power(60, 60, &setmin, &setmax);

      // Extract unique ID from BT Address.
      sc = sl_bt_system_get_identity_address(&address, &address_type);
      app_assert(sc == SL_STATUS_OK,
                    "[E: 0x%04x] Failed to get Bluetooth address\n",
                    (int)sc);

      // Pad and reverse unique ID to get System ID.
      system_id[0] = address.addr[5];
      system_id[1] = address.addr[4];
      system_id[2] = address.addr[3];
      system_id[3] = 0xFF;
      system_id[4] = 0xFE;
      system_id[5] = address.addr[2];
      system_id[6] = address.addr[1];
      system_id[7] = address.addr[0];

      sc = sl_bt_gatt_server_write_attribute_value(gattdb_system_id,
                                                   0,
                                                   sizeof(system_id),
                                                   system_id);

      app_assert(sc == SL_STATUS_OK,
                    "[E: 0x%04x] Failed to write attribute\n",
                    (int)sc);


      print_devname(devname,address.addr);


      sc = sl_bt_gatt_server_write_attribute_value(gattdb_device_name,
                                                   0,
                                                   21,
                                                   (uint8_t*)devname);

      // Create an advertising set.
      sc = sl_bt_advertiser_create_set(&advertising_set_handle);
      app_assert(sc == SL_STATUS_OK,
                    "[E: 0x%04x] Failed to create advertising set\n",
                    (int)sc);

      // Set advertising interval to 100ms.
      sc = sl_bt_advertiser_set_timing(
        advertising_set_handle,
        800, // min. adv. interval (milliseconds * 1.6)
        800, // max. adv. interval (milliseconds * 1.6)
        0,   // adv. duration
        0);  // max. num. adv. events

      app_assert(sc == SL_STATUS_OK,
                    "[E: 0x%04x] Failed to set advertising timing\n",
                    (int)sc);
#if ((ACTIVITY_AVG == 0) || (TEST_MODE == 1))
      sl_status_t sc;
      // Start general advertising and enable connections.
      sc = sl_bt_advertiser_start(
      advertising_set_handle,
      advertiser_general_discoverable,
      advertiser_connectable_scannable);

      app_assert(sc == SL_STATUS_OK,
                  "[E: 0x%04x] Failed to start advertising\n",
                  (int)sc);

      // Turn Off BMA490L
      BMA490L_turnoff();
      bma490l_on = 0;

#elif (ACTIVITY_AVG == 1)
      // Turn on BMA490L and initialize the interrupt pins
      BMA490L_Enable();
      spi_init();
      bma490l_on = 1;
#endif

      for(int i = 0; i < 816; i++)
      {
          acc_data[i] = 0x00;
      }

      // Configure and Initialize the Watchdog timer
      initWDOG();

      sc = sl_sleeptimer_start_periodic_timer(&periodic_1_sec_timer,32768,(sl_sleeptimer_timer_callback_t)timerInterruptBMA490L,NULL,0,0);
      app_assert(sc == SL_STATUS_OK,
                    "[E: 0x%04x] Failed to start soft timer\n",
                    (int)sc);

      // LED Blink on Boot
      ledToggle();

      break;

    // -------------------------------
    // This event indicates that a new connection was opened.
    case sl_bt_evt_connection_opened_id:
      _conn_handle = evt->data.evt_connection_opened.connection;
      sl_bt_connection_set_parameters(_conn_handle, 0x06, 0x06, 0x60, 0x0c80, 0x00, 0xffff);

#if (ACTIVITY_AVG == 1)
      if(bma490l_on == 1)
      {
          BMA490L_Disable();
          bma490l_on = 0;
      }
#endif

      break;

    // -------------------------------
    // This event indicates that a connection was closed.
    case sl_bt_evt_connection_closed_id:

#if (ACTIVITY_AVG == 1)
      fifo_reads = 0;
      for (int i = 0; i < NUM_FILTERS; i++)
      {
          filt_norm_sum[i] = 0;
          filt_norm_avg[i].f = 0;
      }
      norm_sum_cnt = 0;
      acc_data_index = 0;

      BMA490L_Enable();
      spi_init();
      bma490l_on = 1;

#elif (ACTIVITY_AVG == 0 || TEST_MODE == 1)
      // Restart advertising after client has disconnected.
      sc = sl_bt_advertiser_start(
        advertising_set_handle,
        advertiser_general_discoverable,
        advertiser_connectable_scannable);
      app_assert(sc == SL_STATUS_OK,
                    "[E: 0x%04x] Failed to start advertising\n",
                    (int)sc);

      // De-initialize and Turn off BMA490L
      BMA490L_Disable();
      bma490l_on = 0;

      acc_data_index = 0;
#endif

#if (TEST_MODE == 1)
      fifo_reads = 0;
      norm_sum = 0;
      norm_sum_cnt = 0;
      norm_avg.f = 0;
      for (int i = 0; i < NUM_FILTERS; i++)
      {
          filt_norm_sum[i] = 0;
          filt_norm_avg[i].f = 0;
          memset(buff_x[i], 0, (4*numStages[i]) * sizeof(float32_t));
          memset(buff_y[i], 0, (4*numStages[i]) * sizeof(float32_t));
          memset(buff_z[i], 0, (4*numStages[i]) * sizeof(float32_t));
      }
#endif

      break;

    ///////////////////////////////////////////////////////////////////////////
    // Add additional event handlers here as your application requires!      //
    ///////////////////////////////////////////////////////////////////////////


    case sl_bt_evt_gatt_server_characteristic_status_id:
      if ((evt->data.evt_gatt_server_characteristic_status.characteristic == gattdb_err_code_service)
           && (evt->data.evt_gatt_server_characteristic_status.status_flags == 0x01))
      {
           if (evt->data.evt_gatt_server_characteristic_status.client_config_flags == 0x01)
           {
               sl_status_t result;

               do{
                   result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_err_code_service, 4, (uint8_t*)&resetCause);
               } while (SL_STATUS_OK != result);

               resetCause=0;

#if (ACTIVITY_AVG == 1)
             do{
                 result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_fifo_transmit_f, acc_data_index*4, acc_data);
               } while (SL_STATUS_OK != result);

             do{
                 result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_fifo_transmit_g, acc_data_index*4, acc_data+204);
               } while (SL_STATUS_OK != result);

             do{
                 result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_fifo_transmit_h, acc_data_index*4, acc_data+408);
               } while (SL_STATUS_OK != result);

             do{
                 result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_fifo_transmit_i, acc_data_index*4, acc_data+612);
               } while (SL_STATUS_OK != result);

             USTIMER_Delay(500000);
             sl_bt_connection_close(_conn_handle);

#elif ((ACTIVITY_AVG == 0) || (TEST_MODE == 1))
             time = sl_sleeptimer_get_tick_count64();
             // Initialize the SPI interface and configure BMA490L
             BMA490L_Enable();
             spi_init();
             bma490l_on = 1;
#endif

             for(int i = 0; i < 816; i++)
             {
                 acc_data[i] = 0x00;
             }
           }
       }

       break;

    case sl_bt_evt_system_external_signal_id:
      if(evt->data.evt_system_external_signal.extsignals == WDOG)
      {
          WDOG_Feed();
      }
      else if(evt->data.evt_system_external_signal.extsignals == TIMEOUT)
      {
          timeout_check();
      }
      else if(evt->data.evt_system_external_signal.extsignals == FIFO)
      {
          // Reads out data from the FIFO of BMA490L and notifies client if loopcount is 4
          readBMA490L(_conn_handle);
      }

      break;

    // -------------------------------
    // Default event handler.
    default:
      break;
  }
}
