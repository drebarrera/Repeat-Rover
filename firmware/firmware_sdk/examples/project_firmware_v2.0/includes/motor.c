/** @file
 *
 * @defgroup repeat-rover mag.c
 * This file contains the code to operate the Repeat Rover motors.
 *
*/

#include "motor.h"

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
#include "nrf_uarte.h"

#include "app_error.h"
#include "bsp.h"
#include "nrf_delay.h"
#include "app_pwm.h"

// Motor Literals
#define MOTOR_SPEED_MAX 10 // Provide max motor speed here
#define MOTOR_RIGHT_OFFSET_SPEED 2

APP_PWM_INSTANCE(PWM1,1);                   // Create the instance "PWM1" using TIMER1.

// Motor Variables
int MOTOR_SPEED; //1-10
int MOTOR_DIRECTION; // 0 = Forward, 1 = Backward, 2 = Counter Clockwise, 3 = Clockwise
int MOTOR_ANGLE; // 0 (hard right) to 180 (hard left)
int MOTOR_DISTANCE; //mm

/* PIN DIRECTION FORMATTING FOR PINS {4,5,6} & {7,8,9}
!PIN_OUT[2] & !PULL_DOWN[3] => REV
PIN_OUT[2] & PULL_DOWN[3] => FWD
ELSE => NULL */

int counter = 0;

void motor_gpio_clear(void) {
  app_pwm_disable(&PWM1);

  //nrf_gpio_pin_clear(4);
  nrf_gpio_pin_clear(5);
  nrf_gpio_pin_clear(6);
  //nrf_gpio_pin_clear(7);
  nrf_gpio_pin_clear(8);
  nrf_gpio_pin_clear(9);
  nrf_gpio_cfg_output(5);
  nrf_gpio_cfg_output(6);
  nrf_gpio_cfg_output(8);
  nrf_gpio_cfg_output(9);

  
}

// Initialize Motor GPIO
void motor_init(void) {
  // Init GPIO
  //IMPLEMENT PWM HERE
  ret_code_t err_code;

  sd_clock_hfclk_request();

  // 2-channel PWM, 200Hz, output on DK LED pins. 
  app_pwm_config_t pwm1_cfg = APP_PWM_DEFAULT_CONFIG_2CH(5000L, 4, 7); //enable pins 4 and 7

  // Switch the polarity of both channel. 
  pwm1_cfg.pin_polarity[1] = APP_PWM_POLARITY_ACTIVE_HIGH;
  pwm1_cfg.pin_polarity[0] = APP_PWM_POLARITY_ACTIVE_HIGH;
  
  // Initialize and enable PWM. 
  err_code = app_pwm_init(&PWM1,&pwm1_cfg,pwm_ready_callback);
  APP_ERROR_CHECK(err_code);

  motor_gpio_clear();  
}


void pwm_ready_callback(uint32_t pwm_id)    // PWM callback function
{

  return;
}

// SET PARAMETERS
void set_motor_params(int SPEED, int MOVE, bool REVERSE) {
  MOTOR_SPEED = SPEED;
  if (REVERSE) {
    if (MOVE == 0) MOTOR_DIRECTION = 1;
    if (MOVE == 1) MOTOR_DIRECTION = 0;
    if (MOVE == 2) MOTOR_DIRECTION = 3;
    if (MOVE == 3) MOTOR_DIRECTION = 2;
  } else MOTOR_DIRECTION = MOVE;
  return;
}

void adjust_motor_speed(int channel, float constant) {
  int speed = MOTOR_SPEED * 100 * constant / MOTOR_SPEED_MAX;
  app_pwm_channel_duty_set(&PWM1, channel, speed);
  return;
}

// Drive Motors
bool motor_drive(void) {
  if (MOTOR_SPEED > MOTOR_SPEED_MAX) {
    return false;
  }
  
  motor_gpio_clear();
  if (MOTOR_DIRECTION == 0) {
    NRF_GPIO->PIN_CNF[6] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);
    NRF_GPIO->PIN_CNF[9] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);
    nrf_gpio_pin_set(5);
    nrf_gpio_pin_set(8);
  } else if (MOTOR_DIRECTION == 1) {
    NRF_GPIO->PIN_CNF[5] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);
    NRF_GPIO->PIN_CNF[8] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);
    nrf_gpio_pin_set(6);
    nrf_gpio_pin_set(9);
  } else if (MOTOR_DIRECTION == 3) {
    NRF_GPIO->PIN_CNF[6] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);
    NRF_GPIO->PIN_CNF[8] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);
    nrf_gpio_pin_set(5);
    nrf_gpio_pin_set(9);
  } else if (MOTOR_DIRECTION == 2) {
    NRF_GPIO->PIN_CNF[5] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);
    NRF_GPIO->PIN_CNF[9] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);
    nrf_gpio_pin_set(6);
    nrf_gpio_pin_set(8);
  } 

  app_pwm_enable(&PWM1);
  //int speed = MOTOR_SPEED * 100 / MOTOR_SPEED_MAX;
  app_pwm_channel_duty_set(&PWM1, 0, 50);
  app_pwm_channel_duty_set(&PWM1, 1, 50);

  
  return true;
}
