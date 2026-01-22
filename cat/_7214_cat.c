#include "_7214_cat.h"

int main(int argc, char** argv) {
  if (argc < 2) {
    perror("NO FILE TO OPEN");
  } else {
    arguments arg = argument_parser(argc, argv);
    for (int i = optind; i < argc; i++) {
      FILE* f = fopen(argv[i], "r");
      if (f == NULL) {
        perror(argv[i]);
      }
      output(&arg, f);
      fclose(f);
    }
  }
  return 0;
}

arguments argument_parser(int argc, char** argv) {
  arguments arg = {0};
  struct option long_options[] = {
      {"number", no_argument, NULL, 'n'},
      {"number-nonblank", no_argument, NULL, 'b'},
      {"squeeze-blank", no_argument, NULL, 's'},
      {0, 0, 0, 0},
  };
  int opt;
  while ((opt = getopt_long(argc, argv, "bneEtTsv", long_options, 0)) != -1) {
    switch (opt) {
      case 'b':
        arg.b = 1;
        break;
      case 'n':
        arg.n = 1;
        break;
      case 's':
        arg.s = 1;
        break;
      case 'e':
        arg.E = 1;
        arg.v = 1;
        break;
      case 'E':
        arg.E = 1;
        break;
      case 't':
        arg.T = 1;
        arg.v = 1;
        break;
      case 'v':
        arg.v = 1;
        break;
      case 'T':
        arg.T = 1;
        break;
      default:
        break;
    }
  }
  return arg;
}

void TvE_flags(arguments* arg, char* line, int n) {
  for (int i = 0; i < n; i++) {
    if (arg->T && line[i] == '\t')
      printf("^I");
    else {
      if (arg->E && line[i] == '\n') putchar('$');
      if (arg->v) line[i] = v_flag(line[i]);
      putchar(line[i]);
    }
  }
}

void output(arguments* arg, FILE* fp) {
  char* line = NULL;
  size_t memline = 0;
  int read = 0;

  int line_count = 1;
  int empty_count = 0;

  read = getline(&line, &memline, fp);
  while (read != -1) {
    if (line[0] == '\n') {
      empty_count++;
    } else
      empty_count = 0;
    if (arg->s && empty_count > 1) {
    } else {
      if (arg->n || arg->b) {
        if (arg->b && line[0] != '\n') {
          printf("%6d\t", line_count);
          line_count++;
        } else if (arg->n) {
          printf("%6d\t", line_count);
          line_count++;
        }
      }
      TvE_flags(arg, line, read);
    }

    read = getline(&line, &memline, fp);
  }
  free(line);
}

char v_flag(char c) {
  if (c < -96) {
    printf("M-^%c", c + 192);
  } else if (c < 0) {
    printf("M-%c", c + 128);
  } else if (c == 9 || c == 10) {
  } else if (c < 32) {
    printf("^%c", c + 64);
  } else if (c < 127) {
  } else {
    printf("^?");
  }
  return c;
}