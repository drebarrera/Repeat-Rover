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

#include "wss.h"
#include "mag.h"
#include "sd.h"
#include "motor.h"
#include "SEGGER_RTT.h"
#include "CommandMap.h"

#define MAX_DATA_VALUE_MAGNITUDE 3 // QUANTIFIER MAGNITUDE (RANGE OF 0 - 999)
#define COMMAND_STEM_SIZE 3 // LENGTH OF COMMANDS

const char LOWER_ALPHABET[26] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
const char  UPPER_ALPHABET[26] =  {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};

/* MODE
  0 => BUILD NEW PATH WITH STEP-BY-STEP INSTRUCTION
  1 => REPEAT PATH FROM SAVED FILE
  2 => DOWNLOAD WHOLE PATH FILE FROM APPLICATION */
int MODE = -1;

/* MOVE (MOVEMENT)
  0 => FWD (FORWARD)
  1 => REV (REVERSE)
  2 => RCW (ROTATE CLOCKWISE / RIGHT)
  3 => RCC (ROTATE COUNTER-CLOCKWISE / LEFT)*/
int MOVE = -1;

/* QUAN (QUANTIFIER)
  MOVEMENT QUANTIFIER
  FWD / REV => {MIN: 0, MAX: 999} (in meters)
  RCW / RCC => {MIN: 0, MAX: 360} (in degrees)*/
int QUAN = -1;

// SPEED => {MIN: 0, MAX: 10}
int SPEED = 5;

void peripherals_init() {
  //wss_init();
  //magnetometer_init();
  //sd_init();
  //motor_init();
}

void decode(char * data, int data_length, char * command, int * value) {
  sprintf(command, data);

  bool space_present;
  if (command[3] == 32) space_present = true;
  else space_present = false;
  
  if ((data_length < 5 && space_present) || (data_length < 4 && !space_present)) {
    NRF_LOG_ERROR("[!!!] The command given lacks a proper quantifier.");
    return;
  }

  for (int i = 0; i < COMMAND_STEM_SIZE; i++) { // Format Command to Uppercase
    for (int j = 0; j < 26; j++) {
      if (command[i] == LOWER_ALPHABET[j])
        command[i] = UPPER_ALPHABET[j];
    }
  }

  char val_str[MAX_DATA_VALUE_MAGNITUDE + 1];
  int parse_loc = 4;
  if (!space_present) parse_loc = 3;
  memcpy(val_str, &data[parse_loc], data_length - (COMMAND_STEM_SIZE + (parse_loc - 3)));
  int val_int = atoi(val_str);
  *value = val_int;
  return;
}

bool compare_strings(char * str1, char * str2, int length) {
  for (int i = 0; i < length; i++) {
    if (str1[i] != str2[i]) {
      return false;
    }
  }
  return true;
}

void mode_select(int val) {
  MODE = val;
  if (MODE == 0 || MODE == 2) {
    // sd_file_clear(); // CLEAR FILE IN SD CARD
  } else if (MODE == 1) {
    // sd_open(); // OPEN FILE IN SD CARD
    // sd_read_parse(cmd_stack, &cmd_stack_length); // READ & PARSE FILE FROM SD CARD
  } else {
    MODE = -1;
    NRF_LOG_ERROR("[!!!] Mode should be between 0 and 2");
  }
  return;
}

void move_rover() {
  return;
}

void bluetooth_rx(char * data, int data_length) {
  char command[COMMAND_STEM_SIZE];
  int value;
  decode(data, data_length, &command, &value);

  if (MODE == -1) {
    if (compare_strings(command, "MOD", 3)) {
      mode_select(value);
    } else {
      NRF_LOG_ERROR("[!!!] Please set a mode with command MOD.")
    }
  } else {
    if (compare_strings(command, "SPD", 3)) {
      if (value <= 10 && value >= 0) {
        SPEED = value;
      } else {
        NRF_LOG_ERROR("[!!!] Speed should be an integer between 0 and 10");
      }
    } else {
      if (compare_strings(command, "FWD", 3)) {
        if (value > 0 && value <= 999) {
          MOVE = 0;
          QUAN = value;
        } else {
          NRF_LOG_ERROR("[!!!] Forward movement should be an integer between 0 and 999");
        }
      } else if (compare_strings(command, "REV", 3)) {
        if (value > 0 && value <= 999) {
          MOVE = 1;
          QUAN = value;
        } else {
          NRF_LOG_ERROR("[!!!] Reverse movement should be an integer between 0 and 999");
        }
      } else if (compare_strings(command, "RCW", 3)) {
        if (value > 0 && value <= 360) {
          MOVE = 2;
          QUAN = value;
        } else {
          NRF_LOG_ERROR("[!!!] Rotation should be an integer between 0 and 999");
        }
      } else if (compare_strings(command, "RCC", 3)) {
        if (value > 0 && value <= 360) {
          MOVE = 3;
          QUAN = value;
        } else {
          NRF_LOG_ERROR("[!!!] Rotation should be an integer between 0 and 999");
        }
      } else {
          NRF_LOG_ERROR("[!!!] Unknown command.");
      }

      if (MOVE != -1 && MODE == 0) {
        move_rover();
      }
    }
  }

  return;
}