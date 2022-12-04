/** @file
 *
 * @defgroup repeat-rover main.c
 *
 * This is the main firmware file for the Repeat Rover.
 *
 */

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

/*#include "bluetooth.h"
#include "wss.h"
#include "mag.h"
#include "sd.h"
#include "motor.h"*/

/**@brief Function for application main entry.
 */

#define WSS_CIRCUMFERENCE 224.51
#define WSS_N_POLES 24

//extern int WSS_COUNT1;
//extern int WSS_COUNT2;
//extern int WSS_COUNT3;
//extern int WSS_COUNT4;

int main(void)
{
    //setup_bluetooth();
    //wss_init();
    // Start execution.
    NRF_LOG_INFO("Template example started.");

    // Enter main loop.
    for (;;)
    {
        /*if (NRF_LOG_PROCESS() == false) {
            nrf_pwr_mgmt_run();
        }*/
        /*int DT1 = (WSS_CIRCUMFERENCE / WSS_N_POLES) * WSS_COUNT1;
        char c[100];
        sprintf(c, "COUNT1: %d  C: %d\r\n", WSS_COUNT1, DT1);
        printf(c);*/
    }
}


/**
 * @}
 */
