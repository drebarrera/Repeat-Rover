/** @file
 *
 * @defgroup repeat-rover mag.c
 * This file contains the code to operate the Repeat Rover magnetometer.
 *
*/

#include <stdio.h>
#include "boards.h"
#include "app_util_platform.h"
#include "app_error.h"
#include "nrf_drv_twi.h"
#include "nrf_gpio.h"
#include "nrf_delay.h"
#include "SEGGER_RTT.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#include "math.h"

#define TWI_INSTANCE_ID     0 // create a ID constant

// Magnetometer Variables
int MAG_X;
int MAG_Y;
int MAG_Z;
uint8_t address = 0x1E; // address of the sensor
static const nrf_drv_twi_t m_twi = NRF_DRV_TWI_INSTANCE(TWI_INSTANCE_ID);

/* Magnetometer Timer Interrupt Handler */
float mag_timer_handler(void) {
  // Retreive magnetometer data and update magnetometer variables above.
  uint8_t get1[1] = {0x06}; //Number of bytes to read
  uint8_t get2[1] = {0x03}; //Address of data register
  uint16_t Xu; //X Value
  uint16_t Yu; //Y Value
  uint16_t Zu; //Z Value
  int16_t X;
  int16_t Y;
  int16_t Z;
  float heading; //Heading in radians
  float declination = -4.28; //Magnetic declination in degrees for Purdue
  uint8_t data[6] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0}; //Data buffer
  err_code = nrf_drv_twi_tx(&m_twi, address, get2, sizeof(get2), false); //Send data register address
  err_code = nrf_drv_twi_rx(&m_twi, address, data, sizeof(data)); //Read data
  Xu = (data[0] << 8) + (data[1]); //Convert 2 8 bit 2's complement into 1 16 bit 2's complement
  Yu = (data[2] << 8) + (data[3]); //...
  Zu = (data[4] << 8) + (data[5]); //...
  X = twosCompToDec(Xu);
  Y = twosCompToDec(Yu);
  Z = twosCompToDec(Zu);
  MAG_X = X;
  MAG_Y = Y;
  MAG_Z = Z;
  printf("X: %d, Y: %d, Z: %d\n", X, Y, Z); //Debug
  heading = 90 - (atan2(Y,X) * (180/M_PI));
  heading = heading + declination;  
  printf("New Direction: %d \n", heading);
  return heading;
}

int16_t twosCompToDec(uint16_t two_compliment_val)
{
    // [0x0000; 0x7FFF] corresponds to [0; 32,767]
    // [0x8000; 0xFFFF] corresponds to [-32,768; -1]
    // int16_t has the range [-32,768; 32,767]

    uint16_t sign_mask = 0x8000;

    // if positive
    if ( (two_compliment_val & sign_mask) == 0 ) {
        return two_compliment_val;
    //  if negative
    } else {
        // invert all bits, add one, and make negative
        return -(~two_compliment_val + 1);
    }
}

// a function to initialize the twi(i2c)
void twi_init(void)
{
  ret_code_t err_code; // a variable to hold error code

// Create a struct with configurations and pass the values to these configurations.
  const nrf_drv_twi_config_t twi_config = {
    .scl                = 16, 
    .sda                = 15                    ,
    .frequency          = NRF_DRV_TWI_FREQ_100K, // set the communication speed to 100K, we can select 250k or 400k as well
    .interrupt_priority = APP_IRQ_PRIORITY_HIGH, // Interrupt priority is set to high, keep in mind to change it if you are using a soft-device
    .clear_bus_init     = false // automatic bus clearing 

  };

  err_code = nrf_drv_twi_init(&m_twi, &twi_config, NULL, NULL); // initialize the twi
  APP_ERROR_CHECK(err_code); // check if any error occured during initialization

  nrf_drv_twi_enable(&m_twi); // enable the twi comm so that its ready to communicate with the sensor

}

// Initialize Magnetometer GPIO & Initialize Internal Timer Interrupt
/* Timer should sample the bearing at the maximum sample
rate for the magnetometer. */
void magnetometer_init(void) {
  ret_code_t err_code; // a variable to hold error code value
  uint8_t address = 0x1E; // address of the sensor
// initialize the Logger so that we can print msgs on the logger
  APP_ERROR_CHECK(NRF_LOG_INIT(NULL)); 
  NRF_LOG_FLUSH(); // flushing is necessary if deferred is set to 1(check this video tutorial to know it better)
  twi_init(); // call the twi initialization function
  //init sensor
  uint8_t data[6] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0}; //Data buffer
  uint8_t cont[2] = {0x02, 0x00}; //Continuous measurement mode
  uint8_t single[2] = {0x00, 0x70}; //Set frequency in sensor register 0
  uint8_t single2[2] = {0x01, 0x10}; //Set gain in sensor register 1
  err_code = nrf_drv_twi_tx(&m_twi, address, single, sizeof(single), false); //Sensor initialize
  err_code = nrf_drv_twi_tx(&m_twi, address, single2, sizeof(single2), false); //Sensor initialize
  err_code = nrf_drv_twi_tx(&m_twi, address, cont, sizeof(cont), true); //Sensor initialize
}
