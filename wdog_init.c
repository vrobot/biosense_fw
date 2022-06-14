/***************************************************************************//**
 * @file wdog_init.c
 * @brief Watchdog initialization functions.
 *******************************************************************************/
#include "wdog_init.h"

/* Initializes the watchdog timer
 * Gets called from the application code
 */
void initWDOG(void){
  // Enable clock for the WDOG module
  CMU_ClockEnable(cmuClock_WDOG0, true);

  // Watchdog Initialize settings
  WDOG_Init_TypeDef wdogInit = WDOG_INIT_DEFAULT;
  CMU_ClockSelectSet(cmuClock_WDOG0, cmuSelect_ULFRCO); /* ULFRCO as clock source */
  wdogInit.debugRun = true;
  wdogInit.em3Run = true;
  wdogInit.perSel = wdogPeriod_16k;
  // Initializing watchdog with chosen settings
  WDOG_Init(&wdogInit);
}
