#ifndef COMMANDMAP_H_
#define COMMANDMAP_H_

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

#define CMD_STACK_MAX_LENGTH 100

struct cmd {
  int command;
  int value;
};

struct cmd cmd_stack[CMD_STACK_MAX_LENGTH];
int cmd_stack_length = 0;

int push_cmd_values(int command, int value) {
  struct cmd new_cmd = {command, value};
  cmd_stack[cmd_stack_length] = new_cmd;
  cmd_stack_length++;
  return cmd_stack_length - 1;
}

int push_cmd(struct cmd new_cmd) {
  cmd_stack[cmd_stack_length] = new_cmd;
  cmd_stack_length++;
  return cmd_stack_length - 1;
}

struct cmd check_cmd_top() {
  return cmd_stack[cmd_stack_length - 1];

}

struct cmd dequeue_cmd_stack() {
  struct cmd dequeue_cmd = cmd_stack[0];
  for (int i = 0; i < cmd_stack_length - 1; i++)
    cmd_stack[i] = cmd_stack[i + 1];
  cmd_stack_length--;
  return dequeue_cmd;
}

struct cmd pop_cmd_stack() {
  struct cmd pop_cmd = cmd_stack[cmd_stack_length - 1];
  cmd_stack_length--;
  return pop_cmd;
}

#endif