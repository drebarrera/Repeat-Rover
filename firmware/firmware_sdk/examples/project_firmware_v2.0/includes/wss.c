/** @file
 *
 * @defgroup repeat-rover wss.c
 * This file contains the code to operate the Repeat Rover Wheel Speed Sensors with GPIOTE.
*/

#include "wss.h"

#include <stdbool.h>
#include <stdint.h>
#include <string.h>

#include "nordic_common.h"
#include "nrf.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#include "nrf_pwr_mgmt.h"
#include "nrf_gpio.h"
#include "boards.h"

#include "nrf_drv_gpiote.h"

// WSS Literals
#define WSS1_GPIO 26 // Right
#define WSS3_GPIO 28 // Left
#define WSS_CIRCUMFERENCE 224.51
#define WSS_N_POLES 24

// WSS Variables
int WSS_COUNT1;
int WSS_COUNT3; 

// WSS HANDLERS
void wss1_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  WSS_COUNT1++;
}

void wss3_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  WSS_COUNT3++;
}

// Initialize WSS GPIO
void wss_init(void) {
  ret_code_t err_code;
  err_code = nrf_drv_gpiote_init();
  APP_ERROR_CHECK(err_code);

  nrf_drv_gpiote_in_config_t in_config = GPIOTE_CONFIG_IN_SENSE_LOTOHI(true);
  in_config.pull = NRF_GPIO_PIN_PULLUP;

  err_code = nrf_drv_gpiote_in_init(WSS1_GPIO, &in_config, wss1_handler);
  APP_ERROR_CHECK(err_code);
  
  err_code = nrf_drv_gpiote_in_init(WSS3_GPIO, &in_config, wss3_handler);
  APP_ERROR_CHECK(err_code);

  nrf_drv_gpiote_in_event_enable(WSS1_GPIO, true);

  nrf_drv_gpiote_in_event_enable(WSS3_GPIO, true);
}

void callibrate_wss() {
   
}