%module example

%{
#define SWIG_FILE_WITH_INIT
#include "src/example.h"
%}

%include "typemaps.i"
/* list functions to be interfaced: */
void hw1(double r1, double r2, double *OUTPUT);
void hw2(double r1, double r2);