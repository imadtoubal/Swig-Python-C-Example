%module example

%{
#define SWIG_FILE_WITH_INIT
#include "src/example.h"
%}

/* list functions to be interfaced: */
void hw1(double r1, double r2, double *s);
void hw2(double r1, double r2);