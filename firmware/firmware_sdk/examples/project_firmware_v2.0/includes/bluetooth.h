#ifndef BLUETOOTH_H
#define BLUETOOTH_H

#include <stdbool.h>
#include "ble_cus.h"

void setup_bluetooth(void);

bool bluetooth_check_connection(ble_evt_t const * p_ble_evt);

bool bluetooth_tx(char * str, ble_evt_t const * p_ble_evt, void * p_context);

bool bluetooth_check_incoming(ble_evt_t const * p_ble_evt, void * p_context);

uint8_t * bluetooth_rx(ble_cus_t * p_cus, ble_evt_t const * p_ble_evt);

#endif