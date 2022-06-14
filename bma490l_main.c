/***************************************************************************//**
 * @file bma490l_main.c
 * @brief Application functions for BMA490L.
 *******************************************************************************/
#include"bma490l_main.h"

// Handle for SPI
SPIDRV_HandleData_t handleData;
SPIDRV_Handle_t spi_fifo = &handleData;
SPIDRV_Init_t initDataMaster = SPIDRV_MASTER_USART0_BIOSENSE;


/* Sensor initialization configuration */
struct bma490l_dev bma490l_dev;

uint8_t spi_bus;

/* Status of api are returned to this variable */
int8_t rslt;

/* Accelerometer configuration structure */
struct bma490l_accel_config accel_conf = { 0 };

/* Number of accelerometer frames */
uint16_t accel_length;

/* Variable to idx bytes */
uint16_t idx = 0;

/* Variable to store the available frame length count in FIFO */
uint8_t frame_count;

/* Number of bytes of FIFO data */
uint8_t fifo_data[BMA490L_FIFO_RAW_DATA_BUFFER_SIZE] = { 0 };

/* Array of accelerometer frames -> Total bytes =
 * 34 * (7 axes bytes) = 238 bytes */
struct bma490l_accel fifo_accel_data[BMA490L_FIFO_ACCEL_FRAME_COUNT] = { { 0 } };

/* Initialize FIFO frame structure */
struct bma490l_fifo_frame fifoframe = { 0 };

/* Variable that contains interrupt status value */
uint16_t int_status = 0;

/* Variable to hold the length of FIFO data */
uint16_t fifo_length = 0;

uint16_t watermark = 0;

struct bma4_int_pin_config int_pin_config;

// Variables used in reading FIFO
uint8_t acc_data_index = 0;
uint8_t acc_data[816];

#if ((ACTIVITY_AVG == 1) || (TEST_MODE == 1))
uint16_t fifo_reads = 0;
arm_biquad_casd_df1_inst_f32 Sx[NUM_FILTERS];
arm_biquad_casd_df1_inst_f32 Sy[NUM_FILTERS];
arm_biquad_casd_df1_inst_f32 Sz[NUM_FILTERS];

float x[FIFO_FRAME_LEN], filt_x[FIFO_FRAME_LEN];
float y[FIFO_FRAME_LEN], filt_y[FIFO_FRAME_LEN];
float z[FIFO_FRAME_LEN], filt_z[FIFO_FRAME_LEN];

float buff_1[NUM_AXIS][4*NUM_STAGES_0_3];
float buff_2[NUM_AXIS][4*NUM_STAGES_3_7];
float buff_3[NUM_AXIS][4*NUM_STAGES_7_13];
float buff_4[NUM_AXIS][4*NUM_STAGES_13_25];

const float coeff1[] = {0.0042253, -0.0018943, 0.0042253, 1.6712, -0.71432, 1, -1.6276, 1, 1.7326, -0.8363, 1, -1.7553, 1, 1.8101, -0.95331, 1, -2, 1, 1.9689, -0.96929, 1, -1.9999, 1, 1.9924, -0.99259, 1, -1.9999, 1, 1.9983, -0.99846 };
const float coeff2[] = {0.0055501, 0.0022699, 0.0055501, 1.3716, -0.77185, 1, -1.9788, 1, 1.6073, -0.82442, 1, -0.90805, 1, 1.2539, -0.86579, 1, -1.916, 1, 1.775, -0.92711, 1, -1.1, 1, 1.2386, -0.96235, 1, -1.892, 1, 1.8457, -0.98212 };
const float coeff3[] = {0.0084289, 0.012634, 0.0084289, 0.32269, -0.65124, 1, -1.8611, 1, 0.76633, -0.67841, 1, 0.56275, 1, 0.025622, -0.79705, 1, -1.5062, 1, 1.0802, -0.83277, 1, 0.30052, 1, -0.098794, -0.91702, 1, -1.3741, 1, 1.2203, -0.93492, 1, 0.22843, 1, -0.14065, -0.97888, 1, -1.3344, 1, 1.2742, -0.98373 };
const float coeff4[] = {0.028193, -0.047195, 0.028193, -0.80578, -0.3266, 1, -0.60041, 1, -0.41365, -0.61143, 1, 1.9988, 1, -1.6892, -0.73818, 1, -0.13604, 1, -0.21941, -0.84095, 1, 1.9925, 1, -1.904, -0.92658, 1, 0.016589, 1, -0.14135, -0.94465, 1, 1.9879, 1, -1.9597, -0.97719, 1, 0.061985, 1, -0.11656, -0.98685, 1, 1.9859, 1, -1.9768, -0.9928, 1, 1.9852, 1, -1.9827, -0.99835 };

float* buff_x[] = {buff_1[0],buff_2[0],buff_3[0],buff_4[0]};
float* buff_y[] = {buff_1[1],buff_2[1],buff_3[1],buff_4[1]};
float* buff_z[] = {buff_1[2],buff_2[2],buff_3[2],buff_4[2]};
const float* coeff [] = {coeff1,coeff2,coeff3,coeff4};
int numStages[] = {NUM_STAGES_0_3,NUM_STAGES_3_7,NUM_STAGES_7_13,NUM_STAGES_13_25};

// variable for norm calculation
float filt_norm_sum[NUM_FILTERS] = {0};
float_data filt_norm_avg[NUM_FILTERS];
uint16_t norm_sum_cnt = 0;

#if TEST_MODE
float_data norm_avg;
float norm_sum = 0;
#endif
#endif

void advertiser_start(void);

// BMA Config Variable/Function Declarations
/*! Variable that holds the I2C device address or SPI chip selection */
static uint8_t dev_addr;

static void fifoInterrupt(void);
static void bma4xx_hal_delay_usec(uint32_t period_us, void *intf_ptr);
static int8_t BMA490L_write_spi(uint8_t reg_addr, const uint8_t *reg_data, uint32_t length, void *intf_ptr);
static int8_t BMA490L_read_spi(uint8_t reg_addr, uint8_t *reg_data, uint32_t length, void *intf_ptr);


/* Callback function for GPIO external interrupt */
static void fifoInterrupt(void)
{
  sl_bt_external_signal(FIFO);
}

/* Driver function to write data to registers of BMA490L */
static int8_t BMA490L_write_spi(uint8_t reg_addr, const uint8_t *reg_data, uint32_t length, void *intf_ptr)
{
  int8_t rev = 0;
  (void)(intf_ptr);

  uint8_t tempTX[239] = {0,};

  tempTX[0] = reg_addr;
  for(uint32_t i = 1; i < length+1; i++)
    tempTX[i] = reg_data[i-1];

  rev = SPIDRV_MTransmitB(spi_fifo, tempTX, length+1);
  return rev;
}

/* Driver function to read data from registers of BMA490L */
static int8_t BMA490L_read_spi(uint8_t reg_addr, uint8_t *reg_data, uint32_t length, void *intf_ptr)
{
  int8_t rev = 0;
  (void)(intf_ptr);

  uint8_t tempTX[239] = {0,};
  uint8_t tempRX[239] = {0,};
  reg_addr = 0x80 | reg_addr;

  tempTX[0] = reg_addr;
  rev = SPIDRV_MTransferB(spi_fifo, tempTX, tempRX, length+2);

  for (uint32_t i = 1; i < length+1; i++)
  {
    *(reg_data + i-1) = tempRX[i];
  }
  return rev;
}

/*  Implements delay function for BMA490L */
static void bma4xx_hal_delay_usec(uint32_t period_us, void *intf_ptr)
{
  USTIMER_Delay(period_us);
}

/* Initializes the SPI driver and configures the BMA490L registers */
void spi_init(void)
{
  uint8_t dummyTx[2] = {0x7E, 0xB6};
  SPIDRV_Init(spi_fifo, &initDataMaster);
  USTIMER_Delay(250);

  uint8_t FIFOFLUSH[2] = {0x7E, 0xB0};
  SPIDRV_MTransmitB(spi_fifo, FIFOFLUSH, 2);
  USTIMER_Delay(250);

  SPIDRV_MTransmitB(spi_fifo, dummyTx, 2);
  USTIMER_Delay(250*1000);

  bma490l_interface_init(&bma490l_dev);
  rslt = bma490l_init(&bma490l_dev);

  rslt = bma490l_set_accel_enable(BMA490L_ENABLE, &bma490l_dev);

  accel_conf.odr = BMA490L_OUTPUT_DATA_RATE_50HZ;
  accel_conf.range = BMA490L_ACCEL_RANGE_4G;
  accel_conf.bandwidth = BMA490L_ACCEL_OSR4_AVG1;
  accel_conf.perf_mode = BMA490L_CIC_AVG_MODE;
  rslt = bma490l_set_accel_config(&accel_conf, &bma490l_dev);

  rslt = bma490l_set_advance_power_save(BMA490L_DISABLE, &bma490l_dev);

  bma490l_set_accel_fifo_filter_data(0, &bma490l_dev);
  rslt = bma490l_set_fifo_config(BMA490L_FIFO_ALL, BMA490L_DISABLE, &bma490l_dev);
  rslt = bma490l_set_fifo_config(BMA490L_FIFO_ACCEL | BMA490L_FIFO_HEADER | BMA490L_FIFO_STOP_ON_FULL, BMA490L_ENABLE, &bma490l_dev);


  fifoframe.data = fifo_data;
  fifoframe.length = BMA490L_FIFO_RAW_DATA_USER_LENGTH;

  rslt = bma490l_map_interrupt(BMA490L_INTR1_MAP, BMA490L_FIFO_WM_INT, BMA490L_ENABLE, &bma490l_dev);

  fifoframe.wm_lvl = BMA490L_FIFO_WATERMARK_LEVEL;
  rslt = bma490l_set_fifo_wm(fifoframe.wm_lvl, &bma490l_dev);
  rslt = bma490l_get_fifo_wm(&watermark, &bma490l_dev);

  int_pin_config.edge_ctrl = 0x0; // 0 = level, 1 = edge
  int_pin_config.lvl = 0x1; // 0 = active low, 1 = active high
  int_pin_config.od = 0x0; // 0 = push-pull, 1 = open drain
  int_pin_config.output_en = 0x01; // 0 = output disabled, 1 = output enabled
  int_pin_config.input_en = 0x0; // 0 = input disabled, 1 = input enabled. input used for fifo things
  rslt = bma4_set_int_pin_config(&int_pin_config, 0, &bma490l_dev);

  uint8_t addr = 0x7C;
  uint8_t val = 0x03;
  bma490l_write_regs(addr, &val, 1, &bma490l_dev);

}

/* Initializes device structure with user variables and functions to /
 * be used by the sensor API functions
 */
int8_t bma490l_interface_init(struct bma490l_dev *bma)
{
  if (bma != NULL)
  {
    /* Select the interface for execution
       For I2C : BMA4_I2C_INTF
       For SPI : BMA4_SPI_INTF
    */
    bma->intf = BMA490L_SPI_INTF;

    /* To initialize the user SPI function */
    dev_addr = 0;
    bma->intf_ptr = &spi_bus;
    bma->bus_read = BMA490L_read_spi;
    bma->bus_write = BMA490L_write_spi;

    /* Assign device address to interface pointer */
    bma->intf_ptr = &dev_addr;

    /* Configure delay in microseconds */
    bma->delay_us = bma4xx_hal_delay_usec;

    /* Configure max read/write length (in bytes) ( Supported length depends on target machine) */
    bma->read_write_len = 238;
  }
  else
  {
    rslt = BMA490L_E_NULL_PTR;
  }

  return rslt;

}

/* Writes to BMA490L interrupt pin configuration registers */
uint16_t bma4_set_int_pin_config(const struct bma4_int_pin_config *int_pin_config, uint8_t int_line,
                                 struct bma490l_dev *dev)
{
  uint16_t rslt = 0;
  uint8_t interrupt_address_array[2] = {BMA4_INT1_IO_CTRL_ADDR, BMA4_INT2_IO_CTRL_ADDR};
  uint8_t data = 0;

  /* Check the bma4 structure as NULL */
  if (dev == NULL) {
    rslt |= BMA490L_E_NULL_PTR;
  } else {
    if (int_line <= 1) {
      data = ((uint8_t)((int_pin_config->edge_ctrl & BMA4_INT_EDGE_CTRL_MASK) |
                        ((int_pin_config->lvl << 1) & BMA4_INT_LEVEL_MASK) |
                        ((int_pin_config->od << 2) & BMA4_INT_OPEN_DRAIN_MASK) |
                        ((int_pin_config->output_en << 3) & BMA4_INT_OUTPUT_EN_MASK) |
                        ((int_pin_config->input_en << 4) & BMA4_INT_INPUT_EN_MASK)));

      rslt |= bma490l_write_regs(interrupt_address_array[int_line], &data, 1, dev);
    } else {
      rslt |= BMA490L_E_INT_LINE_INVALID;
    }
  }

  return rslt;
}

/* Reads the sensor's FIFO for accelerometer data
 * and notifies the client if loopcount = 4 .
 * Called from the application code when FIFO watermark
 * interrupt has been received.
 */
void readBMA490L(uint8_t _conn_handle)
{

#if ((ACTIVITY_AVG == 0) || (TEST_MODE == 1))
  uint8_t data[204];
  for(int i = 0; i < 204; i++)
    {
        data[i] = 0x00;
    }
#endif

  rslt = bma490l_read_int_status(&int_status, &bma490l_dev);
  if ((rslt == BMA490L_OK) && (int_status & BMA490L_FIFO_WM_INT))
  {
      time = sl_sleeptimer_get_tick_count64(); // 64-bit tick count

      rslt = bma490l_get_fifo_length(&fifo_length, &bma490l_dev);
      rslt = bma490l_read_fifo_data(&fifoframe, &bma490l_dev);
      accel_length = BMA490L_FIFO_ACCEL_FRAME_COUNT;

      if(fifo_length == BMA490L_FIFO_RAW_DATA_USER_LENGTH)
      {
          if (rslt == BMA490L_OK)
          {
              rslt = bma490l_extract_accel(fifo_accel_data, &accel_length, &fifoframe, &bma490l_dev);
              frame_count = (fifo_length / (BMA490L_FIFO_ACC_LENGTH+1));
#if ((ACTIVITY_AVG == 0) || (TEST_MODE == 1))
              int count = 0;
#endif
              for (idx = 0; idx < frame_count; idx++)
              {
                  if(fifoframe.data[idx*7] != 0x84)
                  {
                      goto skip;
                  }
                  else
                  {
#if ((ACTIVITY_AVG == 1) || (TEST_MODE == 1))
                      x[idx] = (float) fifo_accel_data[idx].x;
                      y[idx] = (float) fifo_accel_data[idx].y;
                      z[idx] = (float) fifo_accel_data[idx].z;
#if TEST_MODE
                      norm_sum += sqrt((x[idx]*x[idx]) + (y[idx]*y[idx]) + (z[idx]*z[idx]));
#endif
#endif

#if ((ACTIVITY_AVG == 0) || (TEST_MODE == 1))
                      data[count] = (uint8_t) (fifo_accel_data[idx].x & 0xff);
                      data[count+1] = (uint8_t) ((fifo_accel_data[idx].x >> 8) & 0xff);
                      data[count+2] = (uint8_t) (fifo_accel_data[idx].y & 0xff);
                      data[count+3] = (uint8_t) ((fifo_accel_data[idx].y >> 8) & 0xff);
                      data[count+4] = (uint8_t) (fifo_accel_data[idx].z & 0xff);
                      data[count+5] = (uint8_t) ((fifo_accel_data[idx].z >> 8) & 0xff);
                      count = count + 6;
#endif
                  }
              }

#if ((ACTIVITY_AVG == 1) || (TEST_MODE == 1))
              for(int i = 0; i < NUM_FILTERS; i++)
              {
                  arm_biquad_cascade_df1_f32(&Sx[i], x, filt_x, frame_count);
                  arm_biquad_cascade_df1_f32(&Sy[i], y, filt_y, frame_count);
                  arm_biquad_cascade_df1_f32(&Sz[i], z, filt_z, frame_count);

                  for(int j = 0; j < frame_count; j++)
                  {
                      filt_norm_sum[i] += sqrt((filt_x[j]*filt_x[j]) + (filt_y[j]*filt_y[j]) + (filt_z[j]*filt_z[j]));
                  }
              }
              norm_sum_cnt += frame_count;
#endif
           }

#if (ACTIVITY_AVG == 1)
          fifo_reads++;

          if(fifo_reads == 50)
          {
              for(int i = 0; i < NUM_FILTERS; i++)
              {
                  filt_norm_avg[i].f = (float) filt_norm_sum[i]/norm_sum_cnt;
                  filt_norm_sum[i] = 0;
              }
              norm_sum_cnt = 0;

              for(int x = 0; x < 4; x++)
              {
                  acc_data[(4*acc_data_index) + x] = filt_norm_avg[0].i[x];
                  acc_data[(4*acc_data_index) + x + 204] = filt_norm_avg[1].i[x];
                  acc_data[(4*acc_data_index) + x + 408] = filt_norm_avg[2].i[x];
                  acc_data[(4*acc_data_index) + x + 612] = filt_norm_avg[3].i[x];
              }

              fifo_reads = 0;
              acc_data_index++;
          }
#endif
#if ((ACTIVITY_AVG == 0) || (TEST_MODE == 1))
          if(acc_data_index < 4)
          {
              for(int i = 0; i < 204; i++)
              {
                  acc_data[(acc_data_index*204)+i] = data[i];
              }
              acc_data_index++;
          }
#endif
      }

      skip:

      if(acc_data_index == ACC_DATA_SEND_CNT)
      {

#if (ACTIVITY_AVG == 1)
            USTIMER_Delay(1000000);
            BMA490L_Disable();
            bma490l_on = 0;
#endif

#if (TEST_MODE == 1)
            norm_avg.f = (float) norm_sum/norm_sum_cnt;
            for(int i = 0; i < NUM_FILTERS; i++)
            {
                filt_norm_avg[i].f = (float) filt_norm_sum[i]/norm_sum_cnt;
                filt_norm_sum[i] = 0;
            }
            norm_sum = 0;
            norm_sum_cnt = 0;


#endif


#if ((ACTIVITY_AVG == 0) || (TEST_MODE == 1))
            acc_data_index = 0;
            sl_status_t result;

#if (TEST_MODE == 1)
            do{
                result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_fifo_transmit_d, 4, norm_avg.i);
            } while (SL_STATUS_OK != result);

            do{
                result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_fifo_transmit_f, 4, filt_norm_avg[0].i);
            } while (SL_STATUS_OK != result);

            do{
                result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_fifo_transmit_g, 4, filt_norm_avg[1].i);
            } while (SL_STATUS_OK != result);

            do{
                result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_fifo_transmit_h, 4, filt_norm_avg[2].i);
            } while (SL_STATUS_OK != result);

            do{
                result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_fifo_transmit_i, 4, filt_norm_avg[3].i);
            } while (SL_STATUS_OK != result);
#endif

            do{
                result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_fifo_transmit_a, 204, acc_data);
            } while (SL_STATUS_OK != result);
            do{
                result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_fifo_transmit_b, 204, acc_data+204);
            } while (SL_STATUS_OK != result);

            do{
                result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_fifo_transmit_c, 204, acc_data+408);
            } while (SL_STATUS_OK != result);

            do{
                result = sl_bt_gatt_server_send_notification(_conn_handle, gattdb_fifo_transmit_e, 204, acc_data+612);
            } while (SL_STATUS_OK != result);

            for(int i = 0; i < 816; i++)
            {
                acc_data[i] = 0x00;
            }
#endif

      }

#if (ACTIVITY_AVG == 1)
      if(acc_data_index == (ACC_DATA_SEND_CNT*2)/3)
      {
          advertiser_start();
      }
#endif
  }
}

/* Turn on the sensor and Initialize GPIO interrupt pin */
void BMA490L_Enable(void)
{
  GPIO_PinModeSet(gpioPortC, 2, gpioModePushPull, 1);
  GPIO_PinModeSet(gpioPortA, 5, gpioModeInputPull, 0);
  GPIO_ExtIntConfig(gpioPortA, 5, 5, true, false, true);
  GPIOINT_CallbackRegister(5, (GPIOINT_IrqCallbackPtr_t)fifoInterrupt); // callback function
}

/* Deinitialize BMA490L and releases the SPI pins
 * Turns off the BMA490L and disables GPIO interrupt
 */
void BMA490L_Disable(void)
{
  rslt = bma490l_set_accel_enable(BMA490L_DISABLE, &bma490l_dev);
  rslt = bma490l_set_fifo_config(BMA490L_FIFO_ALL, BMA490L_DISABLE, &bma490l_dev);
  SPIDRV_DeInit(spi_fifo);
  GPIO_PinModeSet(gpioPortC, 2, gpioModePushPull, 0);
  GPIO_PinModeSet(gpioPortA, 5, gpioModeInputPull, 0);
  GPIO_ExtIntConfig(gpioPortA, 5, 5, false, false, false);
}
