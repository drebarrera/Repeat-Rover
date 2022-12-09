#ifndef MOTOR_H
#define MOTOR_H

#include <stdbool.h>

void motor_gpio_clear(void);

bool motor_drive(void);

void pwm_ready_callback(uint32_t);

#endif
