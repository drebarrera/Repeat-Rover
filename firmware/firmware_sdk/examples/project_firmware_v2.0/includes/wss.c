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
#include "motor.h"

#include "nrf_drv_gpiote.h"

#define PI 3.14159265358979323846

// WSS Literals
#define WSSR_GPIO 26 // Right
#define WSSL_GPIO 28 // Left
#define WSS_CIRCUMFERENCE 224.51
#define WSS_N_POLES 24
#define WSS_ROVER_WIDTH 142.15
#define WSS_ALLOWED_OFFSET 12 // Number of Poles Offset From Goal Allowed.

// WSS Variables
int WSS_COUNT_RIGHT;
int WSS_COUNT_LEFT;
int WSS_DRIVE_MODE = -1;

// WSS Goals
int WSS_RIGHT_GOAL = -1;
int WSS_LEFT_GOAL = -1;
int WSS_RIGHT_GOAL_OFFSET = 0;
int WSS_LEFT_GOAL_OFFSET = 0;

void set_wss_goal(int SPEED, int MODE, int QUANTIFIER) {
  WSS_DRIVE_MODE = MODE;
  if (MODE == 0 || MODE == 1) {
    int GOAL = QUANTIFIER * WSS_N_POLES / WSS_CIRCUMFERENCE;
    WSS_RIGHT_GOAL = GOAL;
    WSS_LEFT_GOAL = GOAL;
  } else if (MODE == 2 || MODE == 3) {
    WSS_RIGHT_GOAL = 0;
    WSS_LEFT_GOAL = 0;
    int GOAL = 2 * PI * WSS_ROVER_WIDTH * QUANTIFIER / 360;
    if (MODE == 2) WSS_LEFT_GOAL = GOAL;
    else WSS_RIGHT_GOAL = GOAL;
  }
}

void terminate_rover_motors() {
  set_motor_params(0, WSS_DRIVE_MODE, 0);
  motor_drive();
  return;
}

// WSS HANDLERS
void wss_r_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  WSS_COUNT_RIGHT++;
  if (WSS_COUNT_RIGHT >= WSS_RIGHT_GOAL) WSS_RIGHT_GOAL_OFFSET++;
  if (WSS_RIGHT_GOAL_OFFSET > 0 && WSS_LEFT_GOAL_OFFSET > 0 || WSS_RIGHT_GOAL_OFFSET > WSS_ALLOWED_OFFSET)
    terminate_rover_motors();
}

void wss_l_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  WSS_COUNT_LEFT++;
  if (WSS_COUNT_LEFT >= WSS_LEFT_GOAL) WSS_LEFT_GOAL_OFFSET++;
  if (WSS_LEFT_GOAL_OFFSET > 0 && WSS_RIGHT_GOAL_OFFSET > 0 || WSS_RIGHT_GOAL_OFFSET > WSS_ALLOWED_OFFSET)
    terminate_rover_motors();
}

// Initialize WSS GPIO
void wss_init(void) {
  ret_code_t err_code;
  err_code = nrf_drv_gpiote_init();
  APP_ERROR_CHECK(err_code);

  nrf_drv_gpiote_in_config_t in_config = GPIOTE_CONFIG_IN_SENSE_LOTOHI(true);
  in_config.pull = NRF_GPIO_PIN_PULLUP;

  err_code = nrf_drv_gpiote_in_init(WSSR_GPIO, &in_config, wss_r_handler);
  APP_ERROR_CHECK(err_code);
  
  err_code = nrf_drv_gpiote_in_init(WSSL_GPIO, &in_config, wss_l_handler);
  APP_ERROR_CHECK(err_code);

  nrf_drv_gpiote_in_event_enable(WSSR_GPIO, true);

  nrf_drv_gpiote_in_event_enable(WSSL_GPIO, true);
}