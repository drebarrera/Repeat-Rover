#ifndef SD_H
#define SD_H
 
#include <stdbool.h>

void sd_init(void);

char * sd_read(void);

void sd_file_clear();

bool sd_write(char * str);

void sd_read_parse();

void sd_append_line(char * str);

#endif