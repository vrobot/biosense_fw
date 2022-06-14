/***************************************************************************//**
 * @file bma490l_main.c
 * @brief Application interface for main logic.
 *******************************************************************************/
#include "em_common.h"
#include "sl_app_assert.h"
#include "sl_bluetooth.h"
#include "gatt_db.h"
#include "app.h"
#include "arm_math.h"
#include "em_gpio.h"
#include "gpiointerrupt.h"

#include "ustimer.h"

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

// FIFO
#define FIFO 1

// SPI Configuration
#define SPIDRV_MASTER_USART0_BIOSENSE                                      \
  {                                                                    \
    USART0,                     /* USART port                       */ \
    gpioPortC,                                                          \
    gpioPortC,                                                          \
    gpioPortC,                                                          \
    gpioPortC,                                                          \
    3,                                                          \
    4,                                                          \
    5,                                                          \
    6,                                                          \
    4000000,                    /* Bitrate                          */ \
    8,                          /* Frame length                     */ \
    0,                          /* Dummy Tx value for Rx only funcs */ \
    spidrvMaster,               /* SPI mode                         */ \
    spidrvBitOrderMsbFirst,     /* Bit order on bus                 */ \
    spidrvClockMode0,           /* SPI clock/phase mode             */ \
    spidrvCsControlAuto,        /* CS controlled by the driver      */ \
    spidrvSlaveStartImmediate   /* Slave start transfers immediately*/ \
  }

extern uint8_t acc_data_index;
extern volatile uint64_t time;
extern uint8_t bma490l_on;

#if (ACTIVITY_AVG == 1)
#define ACC_DATA_SEND_CNT 51

#elif ((ACTIVITY_AVG == 0) || (TEST_MODE == 1))
#define ACC_DATA_SEND_CNT 4
#endif

#if ((ACTIVITY_AVG == 1) || (TEST_MODE == 1))
#define NUM_FILTERS         4
#define FIFO_FRAME_LEN      34
#define NUM_AXIS            3

#define NUM_STAGES_0_3      6
#define NUM_STAGES_3_7      6
#define NUM_STAGES_7_13     8
#define NUM_STAGES_13_25    10

extern uint16_t fifo_reads;
extern arm_biquad_casd_df1_inst_f32 Sx[NUM_FILTERS];
extern arm_biquad_casd_df1_inst_f32 Sy[NUM_FILTERS];
extern arm_biquad_casd_df1_inst_f32 Sz[NUM_FILTERS];

extern float* buff_x[NUM_FILTERS];
extern float* buff_y[NUM_FILTERS];
extern float* buff_z[NUM_FILTERS];
extern const float* coeff[NUM_FILTERS];
extern int numStages[NUM_FILTERS];

typedef union
{
      float f;
      uint8_t i[4];
} float_data;
extern float_data filt_norm_avg[NUM_FILTERS];
extern float filt_norm_sum[NUM_FILTERS];
extern uint16_t norm_sum_cnt;

#if TEST_MODE
extern float_data norm_avg;
extern float norm_sum;
#endif
#endif

/*! Buffer size allocated to store raw FIFO data */
#define BMA490L_FIFO_RAW_DATA_BUFFER_SIZE UINT16_C(238)

/*! Length of data to be read from FIFO */
#define BMA490L_FIFO_RAW_DATA_USER_LENGTH UINT16_C(238)

/*! Setting a watermark level in FIFO */
#define BMA490L_FIFO_WATERMARK_LEVEL      UINT16_C(238)

#define BMA490L_FIFO_ACCEL_FRAME_COUNT    UINT8_C(34)

// Variables used in reading FIFO
extern uint8_t acc_data[816];

int8_t bma490l_interface_init(struct bma490l_dev *bma);

uint16_t bma4_set_int_pin_config(const struct bma4_int_pin_config *int_pin_config, uint8_t int_line,
                                 struct bma490l_dev *dev);
void readBMA490L(uint8_t);

void spi_init(void);

void BMA490L_Enable(void);

void BMA490L_Disable(void);
