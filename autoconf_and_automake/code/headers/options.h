#ifndef OPTIONS_H
#define OPTIONS_H
#include <stdio.h>

#define RED "\033[1;31m"
#define BLUE "\033[1;34m"
#define RESET "\033[0m"

void inputFilesetter(int d);
void setFor_V();
void setFor_H();
void setFor_h();
void setFor_M();
void setFor_CASE();
void setFor_B();
void resetFor_B();
void resetFor_CASE();
void resetFor_V();
void resetFor_H();
void resetFor_h();
void resetFor_M();
void setInputNumberForFiles(int argc);

int get_line(FILE *fp, char *s);
int _c(char *filename, char *pattern, char option_c_i, int m);
FILE *_fp(char *filename, char *pattern);
void _m(char *filename, char *pattern, int noOfTimes);
void _grep(char *filename, char *pattern);
void _i(char *filename, char *pattern);
void _f(char *filename, char *inputfile);
int _w(char *filename, char *pattern);
void _e(char *filename, char *pattern);
void _r(char *fold, char *word);
void _q(char *filename, char *pattern);
void printColor(char *, char *);
void _b(char *filename, char *pattern, int *d);
#endif