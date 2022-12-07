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

#include "app_error.h"
#include "bsp.h"
#include "nrf_delay.h"
#include "app_pwm.h"

// Motor Literals
#define MOTOR_SPEED_MAX 10// Provide max motor speed here

// Motor Variables
int MOTOR_SPEED; //1-10
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

  //right
  nrf_gpio_pin_clear(4);
  nrf_gpio_cfg_output(4);
  nrf_gpio_pin_set(4);
  //left
  nrf_gpio_pin_clear(7);
  nrf_gpio_cfg_output(7);
  nrf_gpio_pin_set(7);
  return;
}

APP_PWM_INSTANCE(PWM1,1);                   // Create the instance "PWM1" using TIMER1.

static volatile bool ready_flag;            // A flag indicating PWM status.

void pwm_ready_callback(uint32_t pwm_id)    // PWM callback function
{
    ready_flag = true;
}

// SET PARAMETERS
void set_motor_params(int SPEED, int MOVE, int QUANTIFIER) {
  MOTOR_SPEED = SPEED;
  MOTOR_DIRECTION = MOVE;
  /*if (MODE == 0 || MODE == 1) {
    MOTOR_DISTANCE = QUANTIFIER;
    MOTOR_ANGLE = 90;
  } else if (MODE == 2 || MODE == 3) {
    MOTOR_DISTANCE = 0;
    if (MODE == 2) MOTOR_ANGLE = 0;
    else MOTOR_ANGLE = 180;
  }*/
  return;
}

// Drive Motors
bool motor_drive(void) {
  /*if (MOTOR_SPEED > MOTOR_SPEED_MAX) {
    return false;
  }

  float speed = MOTOR_SPEED / MOTOR_SPEED_MAX * 60 + 20;
  
  //IMPLEMENT PWM HERE
  ret_code_t err_code;

    // 2-channel PWM, 200Hz, output on DK LED pins. 
    app_pwm_config_t pwm1_cfg = APP_PWM_DEFAULT_CONFIG_2CH(5000L, 4, 7); //enable pins 4 and 7

    // Switch the polarity of both channel. 
    pwm1_cfg.pin_polarity[1] = APP_PWM_POLARITY_ACTIVE_HIGH;
    pwm1_cfg.pin_polarity[0] = APP_PWM_POLARITY_ACTIVE_HIGH;

  // Initialize and enable PWM. 
  err_code = app_pwm_init(&PWM1,&pwm1_cfg,pwm_ready_callback);
  APP_ERROR_CHECK(err_code);
  app_pwm_enable(&PWM1);

  uint32_t value;*/
  motor_init();

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
    
  } else if (MOTOR_DIRECTION == 3) {
    // Move CW at angle MOTOR_ANGLE and speed MOTOR_SPEED
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
    
  } else if (MOTOR_DIRECTION == 2) {
    // Move CCW at angle MOTOR_ANGLE and speed MOTOR_SPEED
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
  
    /*while (true)
  {
      for (uint8_t i = 0; i < 40; ++i)
      {
          value = speed;

          ready_flag = false;
           // Set the duty cycle - keep trying until PWM is ready... 
           while (app_pwm_channel_duty_set(&PWM1, 0, value) == NRF_ERROR_BUSY);

           // ... or wait for callback. 
           while (!ready_flag);
           APP_ERROR_CHECK(app_pwm_channel_duty_set(&PWM1, 1, value));
          nrf_delay_ms(25);
       }
   }*/

  return true;
}
