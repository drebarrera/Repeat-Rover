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
#define MOTOR_SPEED_MAX 0// Provide max motor speed here

// Motor Variables
int MOTOR_SPEED;
int MOTOR_DIRECTION; // 0 = Forward, 1 = Backward
int MOTOR_ANGLE; // 0 (hard right) to 180 (hard left)

// Initialize Magnetometer GPIO
void motor_init(void) {
  // Init GPIO

}

// Drive Motors
bool motor_drive(void) {
  if (MOTOR_SPEED > MOTOR_SPEED_MAX) {
    return false;
  }
  if (MOTOR_DIRECTION == 0) {
    // Move Forward at angle MOTOR_ANGLE and speed MOTOR_SPEED
  } else if (MOTOR_DIRECTION == 1) {
    // Move Backward at angle MOTOR_ANGLE and speed MOTOR_SPEED
  }
  return true;
}