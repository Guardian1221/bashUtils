#ifndef _7214_CAT_H
#define _7214_CAT_H

#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>

typedef struct arguments {
  int b, e, v, n, s, t, T, E;
} arguments;

char v_flag(char c);
void output(arguments* arg, FILE* fp);
void TvE_flags(arguments* arg, char* line, int n);
arguments argument_parser(int argc, char** argv);
#endif