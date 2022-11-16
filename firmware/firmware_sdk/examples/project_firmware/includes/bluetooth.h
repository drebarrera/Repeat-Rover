#ifndef BLUETOOTH_H
#define BLUETOOTH_H

#include <stdbool.h>

void setup_bluetooth(void);

bool bluetooth_check_connection(void);

bool bluetooth_tx(char * str);

bool bluetooth_check_incoming(void);

char * bluetooth_rx(void);

#endif