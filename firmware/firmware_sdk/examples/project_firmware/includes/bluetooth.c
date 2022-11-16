/** @file
 *
 * @defgroup repeat-rover bluetooth.c
 * This file contains the code to operate the nRF52832 Bluetooth for Repeat Rover Functions.
*/

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

#include "bluetooth.h"
#include "ble_rr.h"

// BLUETOOTH
/* Setup Bluetooth From ble_rr.c (originally the 
main file of the ble_peripheral code). */
void setup_bluetooth(void) {
  setup_ble();
}

// Wait for bluetooth connection
bool bluetooth_check_connection(void) {
  // if bluetooth is connected, return true
  return true;
}

bool bluetooth_tx(char * str) {
  // transmit str through a bluetooth connection
  // if transmission fails, return false

  // if transmission succeeds, return true
  return true;
}

bool bluetooth_check_incoming(void) {
  // check for incoming data
  // if no incoming data, return false
  // if data is incoming, return true
  return true;
}

char * bluetooth_rx(void) {
  // check for incoming data
  if (!bluetooth_check_incoming()) {
    return "BLUETOOTH_RX_ERROR";
  }

  // return data
}