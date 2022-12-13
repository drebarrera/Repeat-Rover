/** @file
 *
 * @defgroup repeat-rover sd.c
 * This file contains the code to operate the Repeat Rover SD card.
 *
*/

#include "sd.h"

#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <string.h>

#include "bsp.h"
#include "ff.h"
#include "diskio_blkdev.h"
#include "nrf_block_dev_sdc.h"
#include "SEGGER_RTT.h"

#include "nordic_common.h"
#include "nrf.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#include "nrf_pwr_mgmt.h"

#include "boards.h"
#include "nrf_gpio.h"
#include "boards.h"
#include "CommandMap.h"


// SD Card Literals
#define FILE_NAME   "RROV.TXT"
#define BUFFER_SIZE 500
#define TEST_STRING "TEST"

#define SDC_SCK_PIN     18  ///< SDC serial clock (SCK) pin.
#define SDC_MOSI_PIN    19  ///< SDC serial data in (DI) pin.
#define SDC_MISO_PIN    17  ///< SDC serial data out (DO) pin.
#define SDC_CS_PIN      20  ///< SDC chip select (CS) pin.

/**
 * @brief  SDC block device definition
 * */
NRF_BLOCK_DEV_SDC_DEFINE(
        m_block_dev_sdc,
        NRF_BLOCK_DEV_SDC_CONFIG(
                SDC_SECTOR_SIZE,
                APP_SDCARD_CONFIG(SDC_MOSI_PIN, SDC_MISO_PIN, SDC_SCK_PIN, SDC_CS_PIN)
         ),
         NFR_BLOCK_DEV_INFO_CONFIG("Nordic", "SDC", "1.00")
);

static FATFS fs;
static DIR dir;
static FILINFO fno;
FRESULT ff_result;
uint32_t bytes_written;
char buffer[BUFFER_SIZE] = {0};

/**
 * @brief Function for demonstrating FAFTS usage.
 */
void sd_init()
{
    DSTATUS disk_state = STA_NOINIT;

    // Initialize FATFS disk I/O interface by providing the block device.
    static diskio_blkdev_t drives[] =
    {
            DISKIO_BLOCKDEV_CONFIG(NRF_BLOCKDEV_BASE_ADDR(m_block_dev_sdc, block_dev), NULL)
    };

    diskio_blockdev_register(drives, ARRAY_SIZE(drives));

    NRF_LOG_INFO("Initializing disk 0 (SDC)...");
    for (uint32_t retries = 3; retries && disk_state; --retries)
    {
        disk_state = disk_initialize(0);
    }
    if (disk_state)
    {
        NRF_LOG_INFO("Disk initialization failed.");
        return;
    }

    uint32_t blocks_per_mb = (1024uL * 1024uL) / m_block_dev_sdc.block_dev.p_ops->geometry(&m_block_dev_sdc.block_dev)->blk_size;
    uint32_t capacity = m_block_dev_sdc.block_dev.p_ops->geometry(&m_block_dev_sdc.block_dev)->blk_count / blocks_per_mb;
    NRF_LOG_INFO("Capacity: %d MB", capacity);

    //sd_mount();
}

void sd_mount() {
    NRF_LOG_INFO("Mounting volume...");
    
    ff_result = f_mount(&fs, "", 1);
    if (ff_result)
    {
        NRF_LOG_INFO("Mount failed.");
        return;
    }
    return;
}

void sd_list_dir() {
    NRF_LOG_INFO("\r\n Listing directory: /");
    ff_result = f_opendir(&dir, "/");
    if (ff_result)
    {
        NRF_LOG_INFO("Directory listing failed!");
        return;
    }

    do
    {
        ff_result = f_readdir(&dir, &fno);
        if (ff_result != FR_OK)
        {
            NRF_LOG_INFO("Directory read failed.");
            return;
        }

        if (fno.fname[0])
        {
            if (fno.fattrib & AM_DIR)
            {
                NRF_LOG_RAW_INFO("   <DIR>   %s",(uint32_t)fno.fname);
            }
            else
            {
                NRF_LOG_RAW_INFO("%9lu  %s", fno.fsize, (uint32_t)fno.fname);
            }
        }
    }
    while (fno.fname[0]);
    NRF_LOG_RAW_INFO("");
    return;
}

int write_to_sd(FIL file, bool append) {
    NRF_LOG_INFO("Writing to file " FILE_NAME "...");
    if (append) {
      ff_result = f_open(&file, FILE_NAME, FA_OPEN_APPEND | FA_WRITE);
      if (ff_result != FR_OK)
      {
          NRF_LOG_INFO("Unable to open or create file: " FILE_NAME ".");
          return;
      }

      bytes_written = f_printf(&file, "%s", buffer);
    } else {
      ff_result = f_open(&file, FILE_NAME, FA_READ | FA_WRITE | FA_OPEN_ALWAYS);

      if (ff_result != FR_OK)
      {
          NRF_LOG_INFO("Unable to open or create file: " FILE_NAME ".");
          return;
      }

      ff_result = f_write(&file, buffer, sizeof(buffer) - 1, (UINT *) &bytes_written);
      if (ff_result != FR_OK)
      {
          NRF_LOG_INFO("Write failed\r\n.");
      }
      else
      {
          NRF_LOG_INFO("%d bytes written.", bytes_written);
      }
    }
    

    (void) f_close(&file);

    return bytes_written;
}

void clear_buffer() {
  for (int i = 0; i < BUFFER_SIZE; i++) {
    buffer[i] = 0;
  }
}

void sd_clear(FIL file) {
  clear_buffer();
  ff_result = f_open(&file, FILE_NAME, FA_WRITE | FA_OPEN_ALWAYS | FA_CREATE_ALWAYS);
  (void) f_close(&file);
}

int sd_read(FIL file) {
    clear_buffer();
    //read content of the file 
    int ByteRead = 0;

    ff_result = f_open(&file, FILE_NAME, FA_READ);
    if (ff_result != FR_OK)
    {
        NRF_LOG_INFO("Unable to open or create file: " FILE_NAME ".\r\n");
        return 0;
    }

    uint16_t size = f_size(&file) ;
    NRF_LOG_INFO("size of the file in bytes = %d\r\n",size);

    ff_result = f_read(&file,buffer,BUFFER_SIZE, &ByteRead);

    if (ff_result != FR_OK)
    {
        NRF_LOG_INFO("Unable to read or create file: " FILE_NAME ".\r\n");
        return 0;
    }
    else if(ff_result == FR_OK)
    {
      NRF_LOG_INFO("%d bytes read\r\n",ByteRead);
      NRF_LOG_INFO("%s", NRF_LOG_PUSH(buffer));
    }
    else
    {
      NRF_LOG_INFO("Error operation\r\n");
    }

    f_close(&file);

    return ByteRead;
}

void sd_read_parse(FIL file) {
    sd_read(file);
    char command_buffer[4];
    char value_str[3];
    int line_length = 0;
    int value;
    int command;
    for (int i = 0; i < BUFFER_SIZE; i++) {
      if (buffer[i] == '\n') {
        command = command_buffer[0] - 48;
        strncpy(value_str, &command_buffer[1], 3);
        value = atoi(value_str);
        push_cmd_values(command, value);
        for (int j = 0; j < 4; j++)
          command_buffer[j] = 0;
        line_length = 0;
      } else if (buffer[i] != '\r') {
        char c = buffer[i];
        command_buffer[line_length] = c;
        line_length++;
      }
    }
    push_cmd_values(0,1);
    return;
}

void sd_write(FIL file, char * str) {
  strcpy(&buffer, str);
  write_to_sd(file, false); 
}

void sd_append(FIL file, char * str) {
  strcpy(&buffer, str);
  write_to_sd(file, true);
}

void sd_clear_init() {
  static FIL file;
  //sd_mount();
  sd_clear(file);
  //f_mount(0, "", 0);
}

void sd_append_init(char * str) {
  static FIL file;
  //sd_mount();
  sd_append(file, str);
  //f_mount(0, "", 0);
}

void sd_read_parse_init() {
  static FIL file;
  //sd_mount();
  sd_read_parse(file);
  //f_mount(0, "", 0);
}

/**
 * @brief Function for main application entry.
 */
int run(void)
{
    //bsp_board_init(BSP_INIT_LEDS);

    //APP_ERROR_CHECK(NRF_LOG_INIT(NULL));
    //NRF_LOG_DEFAULT_BACKENDS_INIT();

    NRF_LOG_INFO("FATFS example started.");
    
    //sd_init();
    sd_clear_init();
    sd_append_init("0215\n");
    sd_append_init("110\n");
    sd_append_init("390\n");
    sd_read_parse_init();
    //NRF_LOG_INFO("READING INITIAL");
    //sd_read();
    //sd_clear();
    //NRF_LOG_INFO("READING CLEARED");
    //sd_read();
    //NRF_LOG_INFO("APPENDING");
    //sd_write("hello world!\r\n");
    //NRF_LOG_INFO("READING FIRST APPEND");
    //sd_read();
    /*NRF_LOG_INFO("APPENDING");
    sd_append("test!\n");
    NRF_LOG_INFO("READING SECOND APPEND");
    sd_read();
    sd_clear();
    /*sd_read();
    int num_append = sd_append("hello world!\n");
    NRF_LOG_INFO("%d appended", num_append);
    NRF_LOG_INFO("%s", NRF_LOG_PUSH(buffer));
    num_append = sd_append("test\n");
    NRF_LOG_INFO("%d appended", num_append);
    NRF_LOG_INFO("%s", NRF_LOG_PUSH(buffer));
    //sd_list_dir();
    //sd_write(TEST_STRING);
    //sd_read();*/
}