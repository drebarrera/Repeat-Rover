/** @file
 *
 * @defgroup repeat-rover sd.c
 * This file contains the code to operate the Repeat Rover SD card.
 *
*/

#include "sd.h"

#include <stdio.h>
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

// SD Card Literals
#define SD_STR_SIZE_MAX 100

// SD Card Initialize GPIO
void sd_init(void) {
  // Initialize GPIO

}

/* SD Card Read */
char * sd_read(void) {
  char * str;
  // Read SD card to string str

  // Return data
  return str;
}

// SD Card Write
bool sd_write(char * str) {  
  // Write str to sd card

  // If success return true, else false
  return true;
}