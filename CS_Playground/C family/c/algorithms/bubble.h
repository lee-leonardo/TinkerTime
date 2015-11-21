#include "bubble.c"
#include <stdio.h>

void Swap (int * left, int * right);
void Bubble(int arrayToSort[], const int length);
int  LGreaterThanR(const int left, const int right);
void PrintContentsWithArray(int *arrPtr, const int length);
void PrintContentsWithPointer(int *arrPtr);                   //TODO - Not working properly... continues on looking at out of bounds
