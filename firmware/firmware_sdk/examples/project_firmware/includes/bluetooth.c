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
#include "ble_cus.h"

// BLUETOOTH
/* Setup Bluetooth From ble_rr.c (originally the 
main file of the ble_peripheral code). */
void setup_bluetooth(void) {
  setup_ble();
}

// Wait for bluetooth connection
bool bluetooth_check_connection(ble_evt_t * p_ble_evt) {
  // if bluetooth is connected, return true
  switch (p_ble_evt->header.evt_id) {
    case BLE_GAP_EVT_CONNECTED: 
      return true;
    case BLE_GAP_EVT_DISCONNECTED:
      return false;
    default:
      return false;
  }
}

//refer to ble_cus_on_ble_evt() function in ble_cus.c
bool bluetooth_tx(char * str, ble_evt_t const * p_ble_evt, void * p_context) {
  // transmit str through a bluetooth connection
  // if transmission fails, return false
  ble_cus_t * p_cus = (ble_cus_t *) p_context;
    
      NRF_LOG_INFO("BLE event received. Event type = %d\r\n", p_ble_evt->header.evt_id); 
      if (p_cus == NULL || p_ble_evt == NULL)
      {
          return false;
      }
    
      switch (p_ble_evt->header.evt_id)
      {
          case BLE_GATTS_EVT_WRITE:
              on_write(p_cus, p_ble_evt);
              return true;

          default:
              return false;
      }

}

bool bluetooth_check_incoming(ble_evt_t const * p_ble_evt, void * p_context) {
  // check for incoming data
  // if no incoming data, return false
  // if data is incoming, return true

  ble_cus_t * p_cus = (ble_cus_t *) p_context;

  switch (p_ble_evt->header.evt_id)
      {
          case BLE_GATTS_EVT_WRITE:
              on_write(p_cus, p_ble_evt);
              return true;

          default:
              return false;
      }

}

//refer to on_write function in ble_cus.c
uint8_t* bluetooth_rx(ble_cus_t * p_cus, ble_evt_t const * p_ble_evt) {
  // check for incoming data

  ble_gatts_evt_write_t const * p_evt_write = &p_ble_evt->evt.gatts_evt.params.write;

  if (p_evt_write->handle == p_cus->custom_value_handles.value_handle)
  {
    //return data
    return *p_evt_write->data;
  }
  else
  {
    NRF_LOG_INFO("Error, no incoming data");
  }
}