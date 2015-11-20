#include <stdio.h>

void Swap (int * left, int * right);
void Bubble(int arrayToSort[], const int length);
int LGreaterThanR(const int left, const int right);
void PrintContents(int *arrPtr);

int main (void) {
  int array[] = {};
  int arrayLength = sizeof(array) / sizeof(array[0]);

  PrintContents(&array[0], arrayLength);
  Bubble(array, arrayLength);
  PrintContents(&array[0], arrayLength);

  return 0;
}

// Version 1. I am working on a more efficient version.
void Bubble(int arrayToSort[], const int length) {
  for (int i = 0; i < length; i++) {
    int * last;
    for (int j = 0; j < length; j++) {
      int * next;
      if (LGreaterThanR(*last, *next)) Swap(last, next);
    }
  }
}

void Swap (int * left, int * right) {
  int temp;
  temp   = *right;
  *right = *left;
  *left  = temp;
}

int LGreaterThanR(const int left, const int right) {
  if (left > right) return 1;
  return 0;
}

void PrintContents(int *arrPtr) {
  while (*arrPtr != '\0') {
    if (i < (length - 1)) printf("%i, ", *arrPtr);
    if (i < (length - 1)) printf("%i\n", *arrPtr);
    *arrPtr++;
  }
}
