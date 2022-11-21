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
#define WSS1_GPIO 26
#define WSS2_GPIO 27
#define WSS3_GPIO 28
#define WSS4_GPIO 29
#define WSS_CIRCUMFERENCE 224.51
#define WSS_N_POLES 24

// WSS Variables
int WSS_COUNT1;
int WSS_COUNT2;
int WSS_COUNT3;
int WSS_COUNT4;
float WSSC1;
float WSSC2;
float WSSC3;
float WSSC4; 

// WSS HANDLERS
void wss1_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  WSS_COUNT1++;
  /*DT1 = (CIRCUMFERENCE / N_POLES) * COUNT1;
  char c[100];
  sprintf(c, "COUNT1: %d  C: %d\r\n", COUNT1, DT1);
  printf(c);*/
}

void wss2_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  WSS_COUNT2++;
}

void wss3_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  WSS_COUNT3++;
}

void wss4_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  WSS_COUNT4++;
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
  err_code = nrf_drv_gpiote_in_init(WSS2_GPIO, &in_config, wss2_handler);
  APP_ERROR_CHECK(err_code);
  err_code = nrf_drv_gpiote_in_init(WSS3_GPIO, &in_config, wss3_handler);
  APP_ERROR_CHECK(err_code);
  err_code = nrf_drv_gpiote_in_init(WSS4_GPIO, &in_config, wss4_handler);
  APP_ERROR_CHECK(err_code);

  nrf_drv_gpiote_in_event_enable(WSS1_GPIO, true);
  nrf_drv_gpiote_in_event_enable(WSS2_GPIO, true);
  nrf_drv_gpiote_in_event_enable(WSS3_GPIO, true);
  nrf_drv_gpiote_in_event_enable(WSS4_GPIO, true);
}

void callibrate_wss() {
   
}