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

static struct cmd cmd_stack[CMD_STACK_MAX_LENGTH];
static int cmd_stack_length = 0;

static struct cmd cmd_queue[CMD_STACK_MAX_LENGTH];
static int cmd_queue_length = 0;

int push_cmd_values(int command, int value);

int push_cmd(struct cmd new_cmd);

struct cmd check_cmd_stack_top();

struct cmd dequeue_cmd_stack();

struct cmd pop_cmd_stack();

int enqueue_cmd_values(int command, int value);

int enqueue_cmd(struct cmd new_cmd);

struct cmd check_cmd_queue_top();

struct cmd dequeue_cmd_queue();

struct cmd pop_cmd_queue();

#endif