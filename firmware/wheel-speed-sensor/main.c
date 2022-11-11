#include <stdbool.h>
#include <stdio.h>
#include "nrf.h"
#include "nrf_drv_gpiote.h"
#include "app_error.h"
#include "boards.h"

#define WSS1_GPIO 26
#define WSS2_GPIO 27
#define WSS3_GPIO 28
#define WSS4_GPIO 29
#define LED1 17
#define LED2 18
#define LED3 19
#define LED4 20
#define BUTTON 13

#define CIRCUMFERENCE 224.51
#define N_POLES 24
int COUNT1;
int COUNT2;
int COUNT3;
int COUNT4;
int DT1;
float DT2;
float DT3;
float DT4;
float C1;
float C2;
float C3;
float C4; 

void wss1_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  //nrf_gpio_pin_toggle(LED1);
  COUNT1++;
  DT1 = (CIRCUMFERENCE / N_POLES) * COUNT1;
  char c[100];
  sprintf(c, "COUNT1: %d  C: %d\r\n", COUNT1, DT1);
  printf(c);
}

void wss2_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  //nrf_gpio_pin_toggle(LED1);
  COUNT2++;
  DT2 = (CIRCUMFERENCE / N_POLES) * COUNT2;
  char c[100];
  sprintf(c, "COUNT1: %d\r\n", COUNT2);
  printf(c);
}

void wss3_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  //nrf_gpio_pin_toggle(LED1);
  COUNT3++;
  DT3 = (CIRCUMFERENCE / N_POLES) * COUNT3;
  char c[100];
  sprintf(c, "COUNT1: %d\r\n", COUNT3);
  printf(c);
}

void wss4_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  //nrf_gpio_pin_toggle(LED1);
  COUNT4++;
  DT4 = (CIRCUMFERENCE / N_POLES) * COUNT4;
  char c[100];
  sprintf(c, "COUNT1: %d\r\n", COUNT4);
  printf(c);
}

void gpio_init() {
  ret_code_t err_code;
  err_code = nrf_drv_gpiote_init();
  APP_ERROR_CHECK(err_code);

  //nrf_gpio_cfg_output(LED1);
  //nrf_gpio_pin_set(LED1);

  nrf_drv_gpiote_in_config_t in_config = GPIOTE_CONFIG_IN_SENSE_LOTOHI(true);
  in_config.pull = NRF_GPIO_PIN_PULLUP;

  err_code = nrf_drv_gpiote_in_init(WSS1_GPIO, &in_config, wss1_handler);
  APP_ERROR_CHECK(err_code);
  err_code = nrf_drv_gpiote_in_init(WSS2_GPIO, &in_config, wss2_handler);
  APP_ERROR_CHECK(err_code);
  err_code = nrf_drv_gpiote_in_init(WSS3_GPIO, &in_config, wss3_handler);
  APP_ERROR_CHECK(err_code);
  err_code = nrf_drv_gpiote_in_init(WSS4_GPIO, &in_config, wss4_handler);
  APP_ERROR_CHECK(err_code);

  nrf_drv_gpiote_in_event_enable(WSS1_GPIO, true);
  nrf_drv_gpiote_in_event_enable(WSS2_GPIO, true);
  nrf_drv_gpiote_in_event_enable(WSS3_GPIO, true);
  nrf_drv_gpiote_in_event_enable(WSS4_GPIO, true);
}

void callibrate_wss() {
   
}

/**
 * @brief Function for application main entry.
 */
int main(void)
{
    //printf("test\r\n");
    //SEGGER_RTT_WriteString(0, "Hello World from SEGGER!\r\n");
    gpio_init();
    printf("starting...\r\n");

    while (true)
    {
        // Do nothing.
    }
}


/** @} */
