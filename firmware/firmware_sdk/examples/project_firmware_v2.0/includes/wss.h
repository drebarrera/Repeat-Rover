#ifndef WSS_H
#define WSS_H
 
#include <stdbool.h>

void repeat_rover_fwd();

void repeat_rover_back();

void wss_init(void);

void drive(int MD, int S, int M, int Q);

void terminate(bool T);

#endif