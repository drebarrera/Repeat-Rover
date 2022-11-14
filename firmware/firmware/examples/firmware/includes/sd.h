#ifndef SD_H
#define SD_H
 
#include <stdbool.h>

void sd_init(void);

char * sd_read(void);

bool sd_write(char * str);

#endif