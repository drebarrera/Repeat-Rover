/** @file
 *
 * @defgroup repeat-rover wss.c
 * This file contains the code to operate the Repeat Rover Wheel Speed Sensors with GPIOTE.
*/

#include "wss.h"

#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include <math.h>

#include "nordic_common.h"
#include "nrf.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#include "nrf_pwr_mgmt.h"
#include "nrf_gpio.h"
#include "boards.h"
#include "motor.h"
#include "mag.h"
#include "nrf_drv_gpiote.h"
#include "CommandMap.h"

#define PI 3.14159265358979323846

// WSS Literals
#define WSSR_GPIO 26 // Right
#define WSSL_GPIO 28 // Left
#define WSS_CIRCUMFERENCE 22.451
#define WSS_N_POLES 24
#define WSS_ROVER_WIDTH 7.25
#define WSS_ALLOWED_OFFSET 12 // Number of Poles Offset From Goal Allowed.

// Main Variables
int MODE;
int MOVE;
int SPEED;
int QUAN;
bool TERMINATE;

// WSS Variables
int WSS_COUNT_RIGHT;
int WSS_COUNT_LEFT;
int WSS_RIGHT_CONSTANT = 1;
int WSS_LEFT_CONSTANT = 1;
int WSS_DRIVE_MODE = -1;
int REPEAT_MODE = 1; // Reverse
int DIRECTION;

// WSS Goals
int WSS_RIGHT_GOAL = -1;
int WSS_LEFT_GOAL = -1;

void set_wss_goal() {
  WSS_DRIVE_MODE = MOVE;
  if (MOVE == 0 || MOVE == 1) {
    int GOAL = QUAN * WSS_N_POLES / WSS_CIRCUMFERENCE;
    WSS_RIGHT_GOAL = GOAL;
    WSS_LEFT_GOAL = GOAL;
  } else if (MOVE == 2 || MOVE == 3) {
    int GOAL = 2 * PI * WSS_ROVER_WIDTH * QUAN / 360;
    WSS_LEFT_GOAL = GOAL;
    WSS_RIGHT_GOAL = GOAL;
  }
  WSS_COUNT_RIGHT = 0;
  WSS_COUNT_LEFT = 0;
  DIRECTION = mag_direction();
  NRF_LOG_INFO("%d",DIRECTION);
  nrf_drv_gpiote_in_event_enable(WSSR_GPIO, true);
  nrf_drv_gpiote_in_event_enable(WSSL_GPIO, true);
  return;
}

void terminate_rover_motors() {
  nrf_drv_gpiote_in_event_disable(WSSR_GPIO);
  nrf_drv_gpiote_in_event_disable(WSSL_GPIO);
  motor_gpio_clear();
  if (MODE == 1 || MODE == 2) {
    if (REPEAT_MODE == 1) repeat_rover_back();
    else repeat_rover_fwd();
  }
  DIRECTION = mag_direction();
  NRF_LOG_INFO("%d",DIRECTION);
  return;
}

void correct(int side) {
  
}

// WSS HANDLERS
void wss_r_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  WSS_COUNT_RIGHT++;
  if (abs(DIRECTION - mag_direction()) == QUAN) //  WSS_COUNT_RIGHT >= WSS_RIGHT_GOAL && (WSS_LEFT_GOAL - WSS_COUNT_LEFT) < WSS_ALLOWED_OFFSET)
    terminate_rover_motors();
  correct(0);
  NRF_LOG_INFO("R%d", DIRECTION - mag_direction());
  return;
}

void wss_l_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  WSS_COUNT_LEFT++;
  if (abs(DIRECTION - mag_direction()) == QUAN)//if (WSS_COUNT_LEFT >= WSS_RIGHT_GOAL && (WSS_RIGHT_GOAL - WSS_COUNT_RIGHT) < WSS_ALLOWED_OFFSET)
    terminate_rover_motors();
  correct(1);
  NRF_LOG_INFO("L%d", DIRECTION - mag_direction());
  return;
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
}

void repeat_rover_fwd() {
  if (cmd_stack_length > 0) {
    REPEAT_MODE = 0;
    struct cmd next_cmd = pop_cmd_stack();
    MOVE = next_cmd.command;
    QUAN = next_cmd.value;
    drive_rover_motors();
    int command;
    int value = next_cmd.value;
    switch (next_cmd.command) {
      case 0: command = 1;
      case 1: command = 0;
      case 2: command = 3;
      case 3: command = 2;
    }
    enqueue_cmd_values(command, value);
  } else {
    repeat_rover_back();
  }
}

void repeat_rover_back() {
  if (cmd_queue_length > 0) {
    REPEAT_MODE = 1;
    struct cmd next_cmd = dequeue_cmd_queue();
    if (next_cmd.command == 4) SPEED = next_cmd.value;
    else {
      MOVE = next_cmd.command;
      QUAN = next_cmd.value;
      drive_rover_motors();
      int command;
      int value = next_cmd.value;
      switch (next_cmd.command) {
        case 0: command = 1;
        case 1: command = 0;
        case 2: command = 3;
        case 3: command = 2;
      }
      push_cmd_values(command, value);
    }
  } else if (!TERMINATE) {
    repeat_rover_fwd();
  }
}

void drive(int MD, int S, int M, int Q) {
  MODE = MD;
  MOVE = M;
  SPEED = S;
  QUAN = Q;
  drive_rover_motors();
}

void drive_rover_motors() {
  set_motor_params(SPEED, MOVE, QUAN);
  set_wss_goal();
  motor_drive();
  return;
}

void terminate(bool T) {
  TERMINATE = T;
}