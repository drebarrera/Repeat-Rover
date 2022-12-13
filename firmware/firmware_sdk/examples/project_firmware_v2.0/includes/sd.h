#ifndef SD_H
#define SD_H
 
#include <stdbool.h>

void sd_init(void);

void sd_mount();

void sd_clear_init();

//void sd_write(FIL file, char * str);

void sd_read_parse_init();

void sd_append_init(char * str);

int run();

#endif