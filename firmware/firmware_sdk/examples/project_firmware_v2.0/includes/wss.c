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
#define WSS_ROVER_WIDTH 14.5
#define WSS_ALLOWED_OFFSET 12 // Number of Poles Offset From Goal Allowed.
#define LEARNING_RATE 0.01

// Main Variables
int MODE;
int MOVE;
int SPEED;
int QUAN;
bool TERMINATE = false;
bool REVERSE = false;

// WSS Variables
int WSS_COUNT_RIGHT;
int WSS_COUNT_LEFT;
int WSS_DRIVE_MODE = -1;
int REPEAT_MODE = 0;
int DIRECTION;
bool BLOCK_INTERRUPT = true;

// WSS Goals
int WSS_RIGHT_GOAL = -1;
int WSS_LEFT_GOAL = -1;

// Correction Variables
float J1 = 1;
float J2 = 2;
float WSS_RIGHT_CONSTANT = 1;
float WSS_LEFT_CONSTANT = 1;
int LAST_MODIFIED = 0;

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
  BLOCK_INTERRUPT = false;
  return;
}

void terminate_rover_motors() {
  BLOCK_INTERRUPT = true;
  nrf_drv_gpiote_in_event_disable(WSSR_GPIO);
  nrf_drv_gpiote_in_event_disable(WSSL_GPIO);
  motor_gpio_clear();
  if (!MODE && REPEAT_MODE || MODE == 1 || MODE == 2) {
    if (REVERSE) repeat_rover_back();
    else repeat_rover_fwd();
  }
  DIRECTION = mag_direction();
  NRF_LOG_INFO("%d",DIRECTION);
  return;
}

void correct(int side) {
  /*if ((J1 > 0.05 || J2 > 0.05) && (WSS_COUNT_RIGHT > 0 && WSS_COUNT_LEFT > 0)) {
    if (LAST_MODIFIED == 0) {
       WSS_RIGHT_CONSTANT ==  WSS_RIGHT_CONSTANT + (WSS_COUNT_LEFT - WSS_COUNT_RIGHT) * LEARNING_RATE;
       LAST_MODIFIED = 1;
       adjust_motor_speed(0, WSS_RIGHT_CONSTANT);
       J1 = pow((WSS_COUNT_LEFT - WSS_COUNT_RIGHT), 2);
    } else {
       WSS_LEFT_CONSTANT ==  WSS_LEFT_CONSTANT + (WSS_COUNT_RIGHT - WSS_COUNT_LEFT) * LEARNING_RATE;
       LAST_MODIFIED = 0;
       adjust_motor_speed(0, WSS_LEFT_CONSTANT);
       J1 = pow((WSS_COUNT_RIGHT - WSS_COUNT_LEFT), 2);
    }
    NRF_LOG_INFO("%d", LAST_MODIFIED);
    NRF_LOG_INFO("J1 " NRF_LOG_FLOAT_MARKER " J2 " NRF_LOG_FLOAT_MARKER, NRF_LOG_FLOAT(J1), NRF_LOG_FLOAT(J2))
   
  }*/
}

// WSS HANDLERS
void wss_r_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  if (!BLOCK_INTERRUPT) {
    WSS_COUNT_RIGHT++;
    if (WSS_COUNT_RIGHT >= WSS_RIGHT_GOAL && (WSS_LEFT_GOAL - WSS_COUNT_LEFT) < WSS_ALLOWED_OFFSET) // (abs(DIRECTION - mag_direction()) == QUAN)
      terminate_rover_motors();
    //correct(0);
    //NRF_LOG_INFO("R%d", WSS_COUNT_RIGHT - mag_direction());
    return;
  }
}

void wss_l_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  if (!BLOCK_INTERRUPT) {
    WSS_COUNT_LEFT++;
    if (WSS_COUNT_LEFT >= WSS_RIGHT_GOAL && (WSS_RIGHT_GOAL - WSS_COUNT_RIGHT) < WSS_ALLOWED_OFFSET) // if (abs(DIRECTION - mag_direction()) == QUAN)
      terminate_rover_motors();
    //correct(1);
    //NRF_LOG_INFO("L%d", WSS_COUNT_LEFT - mag_direction());
    return;
  }
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
  if (command_queue_len()) {
    REVERSE = false;
    NRF_LOG_INFO("FWD, %d", REVERSE);
    REPEAT_MODE = 1;
    struct cmd * next_cmd = dequeue_cmd_queue();
    if (next_cmd->command == 4) SPEED = next_cmd->value;
    else {
      MOVE = next_cmd->command;
      QUAN = next_cmd->value;
      drive_rover_motors();
    }
    push_cmd_values(next_cmd->command, next_cmd->value);
  } else {
    repeat_rover_back();
  }
}

void repeat_rover_back() {
  if (command_stack_len()) {
    REVERSE = true;
    NRF_LOG_INFO("REV, %d", REVERSE);
    REPEAT_MODE = 1;
    struct cmd * next_cmd = pop_cmd_stack();
    if (next_cmd->command == 4) SPEED = next_cmd->value;
    else {
      MOVE = next_cmd->command;
      QUAN = next_cmd->value;
      drive_rover_motors();
    }
    enqueue_cmd_values(next_cmd->command, next_cmd->value);
  } else if (!TERMINATE) {
    repeat_rover_fwd();
  } else {
    TERMINATE = false;
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
  set_motor_params(SPEED, MOVE, REVERSE);
  set_wss_goal();
  motor_drive();
  return;
}

void end_handler() {
  if (REPEAT_MODE) {
    TERMINATE = true;
  } else {
    repeat_rover_back();
  }
}