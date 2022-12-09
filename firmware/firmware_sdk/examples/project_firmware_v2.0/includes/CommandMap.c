#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include "CommandMap.h"

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

struct cmd check_cmd_stack_top() {
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

int enqueue_cmd_values(int command, int value) {
  struct cmd new_cmd = {command, value};
  cmd_queue[cmd_queue_length] = new_cmd;
  cmd_queue_length++;
  return cmd_queue_length - 1;
}

int enqueue_cmd(struct cmd new_cmd) {
  cmd_queue[cmd_queue_length] = new_cmd;
  cmd_queue_length++;
  return cmd_queue_length - 1;
}

struct cmd check_cmd_queue_top() {
  return cmd_queue[cmd_queue_length - 1];

}

struct cmd dequeue_cmd_queue() {
  struct cmd dequeue_cmd = cmd_queue[0];
  for (int i = 0; i < cmd_queue_length - 1; i++)
    cmd_queue[i] = cmd_queue[i + 1];
  cmd_queue_length--;
  return dequeue_cmd;
}

struct cmd pop_cmd_queue() {
  struct cmd pop_cmd = cmd_queue[cmd_queue_length - 1];
  cmd_queue_length--;
  return pop_cmd;
}