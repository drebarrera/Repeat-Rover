/** @file
 *
 * @defgroup repeat-rover main.c
 *
 * This is the main firmware file for the Repeat Rover.
 *
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
#include "wss.h"
#include "mag.h"
#include "sd.h"
#include "motor.h"

/**@brief Function for application main entry.
 */
int main(void)
{
    setup_bluetooth();
    wss_init();
    // Start execution.
    NRF_LOG_INFO("Template example started.");

    // Enter main loop.
    for (;;)
    {
        if (NRF_LOG_PROCESS() == false) {
            nrf_pwr_mgmt_run();
        }
    }
}


/**
 * @}
 */
