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
#include "nrf_gpio.h"
#include "boards.h"
#include "CommandMap.h"


// SD Card Literals
#define SD_STR_SIZE_MAX 100
#define FILE_NAME   "NORDIC.TXT"

#define SDC_SCK_PIN     18  ///< SDC serial clock (SCK) pin.
#define SDC_MOSI_PIN    19  ///< SDC serial data in (DI) pin.
#define SDC_MISO_PIN    17  ///< SDC serial data out (DO) pin.
#define SDC_CS_PIN      20  ///< SDC chip select (CS) pin.

static FIL file;
static FATFS fs;
static DIR dir;
static FILINFO fno;
FRESULT ff_result;
TCHAR * filename = FILE_NAME;

//SD card modules
//Delete an existing file or directory
//FRESULT open_append (FIL* fp, const char* path);

// SD Card Initialize GPIO
void sd_init(void) {
  // Initialize GPIO
  

}

NRF_BLOCK_DEV_SDC_DEFINE(
        m_block_dev_sdc,
        NRF_BLOCK_DEV_SDC_CONFIG(
                SDC_SECTOR_SIZE,
                APP_SDCARD_CONFIG(SDC_MOSI_PIN, SDC_MISO_PIN, SDC_SCK_PIN, SDC_CS_PIN)
         ),
         NFR_BLOCK_DEV_INFO_CONFIG("Nordic", "SDC", "1.00")
);


/* SD Card Read */
char * sd_read(void) {

    uint32_t bytes_written;
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

    NRF_LOG_INFO("Mounting volume...");
    ff_result = f_mount(&fs, "", 1);
    if (ff_result)
    {
        NRF_LOG_INFO("Mount failed.");
        return;
    }

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
  char * str;
  // Read SD card to string str
  //read content of the file
    char data[SD_STR_SIZE_MAX]={0}; /* Line buffer */
    unsigned int ByteRead = 0;

    ff_result = f_open(&file, FILE_NAME, FA_READ);
    if (ff_result != FR_OK)
    {
        NRF_LOG_INFO("Unable to open or create file: " FILE_NAME ".\r\n");
        return;
    }

    uint16_t size = f_size(&file) ;
    NRF_LOG_INFO("size of the file in bytes = %d\r\n",size);

    ff_result = f_read(&file,data,SD_STR_SIZE_MAX, &ByteRead);

    if (ff_result != FR_OK)
    {
        NRF_LOG_INFO("Unable to read or create file: " FILE_NAME ".\r\n");
       (void) f_close(&file);
        return 0;
    }
    else if(ff_result == FR_OK)
    {
      NRF_LOG_INFO("%d bytes read\r\n",ByteRead);

    }
    else
    {
      NRF_LOG_INFO("Error operation\r\n");
    }

  // Return data
   (void) f_close(&file);
  return data;
}

// SD Card Write
bool sd_write(char * str) { 
  char * TEST_STRING = str;

    uint32_t bytes_written;
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
        NRF_LOG_INFO("TEST");
    }
    if (disk_state)
    {
        NRF_LOG_INFO("Disk initialization failed.");
        return;
    }

    uint32_t blocks_per_mb = (1024uL * 1024uL) / m_block_dev_sdc.block_dev.p_ops->geometry(&m_block_dev_sdc.block_dev)->blk_size;
    uint32_t capacity = m_block_dev_sdc.block_dev.p_ops->geometry(&m_block_dev_sdc.block_dev)->blk_count / blocks_per_mb;
    NRF_LOG_INFO("Capacity: %d MB", capacity);

    NRF_LOG_INFO("Mounting volume...");
    ff_result = f_mount(&fs, "", 1);
    if (ff_result)
    {
        NRF_LOG_INFO("Mount failed.");
        return;
    }

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
  // Write str to sd card
   while (fno.fname[0]);
    NRF_LOG_RAW_INFO("");
    ff_result = f_open(&file, FILE_NAME,FA_WRITE);
    (void) f_close(&file);

    NRF_LOG_INFO("Writing to file " FILE_NAME "...");
    ff_result = f_open(&file, FILE_NAME, FA_READ | FA_WRITE | FA_OPEN_APPEND);
    if (ff_result != FR_OK)
    {
        NRF_LOG_INFO("Unable to open or create file: " FILE_NAME ".");
        return;
    }

    ff_result = f_write(&file, TEST_STRING, sizeof(TEST_STRING) - 1, (UINT *) &bytes_written);
    if (ff_result != FR_OK)
    {
        NRF_LOG_INFO("Write failed\r\n.");
       (void) f_close(&file);
      return false;
    }
    else
    {
        NRF_LOG_INFO("%d bytes written.", bytes_written);
    }

    (void) f_close(&file);

  // If success return true, else false
  return true;
}

//Remove file
void sd_file_clear() {
  NRF_LOG_INFO("Mounting volume...");
  ff_result = f_mount(&fs, FILE_NAME, 1);
  if (ff_result)
  {
      NRF_LOG_INFO("Mount failed.");
      return;
  }
  FRESULT res = f_unlink(FILE_NAME);
  
  sd_write("");

}


void sd_read_parse() {

  ff_result = f_open(&file, FILE_NAME,FA_READ);

  if (ff_result != FR_OK) {
        NRF_LOG_INFO("Unable to open or create file: " FILE_NAME ".\r\n");
        return;
  }

  char data[SD_STR_SIZE_MAX]={0}; /* Line buffer */
  unsigned int ByteRead = 0;

  uint16_t size = f_size(&file) ;
  NRF_LOG_INFO("size of the file in bytes = %d\r\n",size);

  ff_result = f_read(&file,data,SD_STR_SIZE_MAX, &ByteRead);

  if (ff_result != FR_OK)
  {
      NRF_LOG_INFO("Unable to read or create file: " FILE_NAME ".\r\n");
     (void) f_close(&file);
      return 0;
  }
  else if(ff_result == FR_OK)
  {
    NRF_LOG_INFO("%d bytes read\r\n",ByteRead);
    //printf("%s", data);

    int* mode[30];
    int* sp[30];
    int first;
    int second;
    int third;
    int i = 0;

    for(int j = 0; j< sizeof(data); j++) {
        if (data[j] != ' ' && data[j] != '\n') {
            mode[i] = data[j] - 48;
            first = (data[(j+1)] - 48) * 100;
            printf(" 1st: %d", first);
            second = (data[j+2] - 48) * 10;
            printf(" second : %d", second);
            third = data[j+3] - 48;
            printf(" third: %d", third);
            sp[i] = first + second + third;
            j+= 3;
            i++;

            push_cmd_values(mode[i], sp[i]);
        }
    }

  }
  else
  {
    NRF_LOG_INFO("Error operation\r\n");
  }

  (void) f_close(&file);

}

//Append to a line of text to a file
FRESULT open_append (
    FIL* fp,            /* [OUT] File object to create */
    const char* path    /* [IN]  File name to be opened */
)
{
    FRESULT fr;

    /* Opens an existing file. If not exist, creates a new file. */
    fr = f_open(fp, path, FA_WRITE | FA_OPEN_ALWAYS);
    if (fr == FR_OK) {
        /* Seek to end of the file to append data */
        fr = f_lseek(fp, f_size(fp));
        if (fr != FR_OK)
            f_close(fp);
    }
    return fr;
}

void sd_append_line(char * str) {

    FRESULT fr;

    //append line to file
    fr = open_append(&file, FILE_NAME);
    f_printf(&file, "%s", str);

    if (fr != FR_OK) {
      printf("Something went wrong");
    }

}

