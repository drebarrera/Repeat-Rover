/** @file
 *
 * @defgroup repeat-rover mag.c
 * This file contains the code to operate the Repeat Rover magnetometer.
 *
*/

#include "mag.h"

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

// Magnetometer Variables
int MAG_X;
int MAG_Y;
int MAG_Z;

/* Magnetometer Timer Interrupt Handler */
bool mag_timer_handler(void) {
  // Retreive magnetometer data and update magnetometer variables above.

  // Return true if success, false if failure
  return true;
}


// Initialize Magnetometer GPIO & Initialize Internal Timer Interrupt
/* Timer should sample the bearing at the maximum sample
rate for the magnetometer. */
void magnetometer_init(void) {
  // Init GPIO

  // Init Timer Interrupt With mag_timer_handler() Handler

}