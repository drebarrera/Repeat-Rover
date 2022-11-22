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

// Motor Literals
#define MOTOR_SPEED_MAX 10// Provide max motor speed here

// Motor Variables
int MOTOR_SPEED;
int MOTOR_DIRECTION; // 0 = Forward, 1 = Backward, 2 = Counter Clockwise, 3 = Clockwise
int MOTOR_ANGLE; // 0 (hard right) to 180 (hard left)
int MOTOR_DISTANCE; //mm

int counter = 0;

// Initialize Motor GPIO
void motor_init(void) {
  // Init GPIO
  nrf_gpio_pin_clear(4);
  nrf_gpio_pin_clear(5);
  nrf_gpio_pin_clear(6);
  nrf_gpio_pin_clear(7);
  nrf_gpio_pin_clear(8);
  nrf_gpio_pin_clear(9);
}

// Drive Motors
bool motor_drive(void) {
  if (MOTOR_SPEED > MOTOR_SPEED_MAX) {
    return false;
  }
  float speed = (MOTOR_SPEED_MAX - MOTOR_SPEED) / MOTOR_SPEED_MAX * 60 + 20;
  //IMPLEMENT PWM HERE

  if (MOTOR_DIRECTION == 0) {
    // Move Forward at angle MOTOR_ANGLE and speed MOTOR_SPEED
    //direction
    nrf_gpio_cfg_output(5);
    nrf_gpio_pin_set(5);

    nrf_gpio_cfg_output(6);
    nrf_gpio_pin_clear(6);
    NRF_GPIO->PIN_CNF[6] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);

    nrf_gpio_cfg_output(8);
    nrf_gpio_pin_set(8);

    nrf_gpio_cfg_output(9);
    nrf_gpio_pin_clear(9);
    NRF_GPIO->PIN_CNF[9] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);

  } else if (MOTOR_DIRECTION == 1) {
    // Move Backward at angle MOTOR_ANGLE and speed MOTOR_SPEED
        //direction
    nrf_gpio_cfg_output(6);
    nrf_gpio_pin_set(6);

    nrf_gpio_cfg_output(5);
    nrf_gpio_pin_clear(5);
    NRF_GPIO->PIN_CNF[5] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);

    nrf_gpio_cfg_output(9);
    nrf_gpio_pin_set(9);

    nrf_gpio_cfg_output(8);
    nrf_gpio_pin_clear(8);
    NRF_GPIO->PIN_CNF[8] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);
    
  } else if (MOTOR_DIRECTION == 2) {
    // Move CC at angle MOTOR_ANGLE and speed MOTOR_SPEED
        //direction
    nrf_gpio_cfg_output(5);
    nrf_gpio_pin_set(5);

    nrf_gpio_cfg_output(6);
    nrf_gpio_pin_clear(6);
    NRF_GPIO->PIN_CNF[6] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);

    nrf_gpio_cfg_output(9);
    nrf_gpio_pin_set(9);

    nrf_gpio_cfg_output(8);
    nrf_gpio_pin_clear(8);
    NRF_GPIO->PIN_CNF[8] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);
    
  } else if (MOTOR_DIRECTION == 3) {
    // Move Clockwise at angle MOTOR_ANGLE and speed MOTOR_SPEED
        //direction
    nrf_gpio_cfg_output(6);
    nrf_gpio_pin_set(6);

    nrf_gpio_cfg_output(5);
    nrf_gpio_pin_clear(5);
    NRF_GPIO->PIN_CNF[5] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);

    nrf_gpio_cfg_output(8);
    nrf_gpio_pin_set(8);

    nrf_gpio_cfg_output(9);
    nrf_gpio_pin_clear(9);
    NRF_GPIO->PIN_CNF[9] |= (GPIO_PIN_CNF_PULL_Pulldown<<GPIO_PIN_CNF_PULL_Pos);
    
  } else {
    //do nothing
    nrf_gpio_pin_clear(4);
    nrf_gpio_pin_clear(5);
    nrf_gpio_pin_clear(6);
    nrf_gpio_pin_clear(7);
    nrf_gpio_pin_clear(8);
    nrf_gpio_pin_clear(9);
  }

  return true;
}
