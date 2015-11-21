#include "bubble.h"
#include <stdio.h>

void Swap (int * left, int * right);
void Bubble(int arrayToSort[], const int length);
int  LGreaterThanR(const int left, const int right);
void PrintContentsWithArray(int *arrPtr, const int length);
void PrintContentsWithPointer(int *arrPtr);                   //TODO - Not working properly... continues on looking at out of bounds

// int main (void) {
//   printf("Start of Bubble Sort testing.\n");
//   int array[] = {8,7,6,5,4,3,2,1};
//   int arrayLength = sizeof(array) / sizeof(array[0]);
//   PrintContentsWithArray(&array[0], arrayLength);
//   // PrintContentsWithPointer(&array[0]);
//   Bubble(array, arrayLength);
//   PrintContentsWithArray(&array[0], arrayLength);
//   // PrintContentsWithPointer(&array[0]);
//   return 0;
// }

/*
Bubble Sort
Pseudocode
  for i = 1:n,
      swapped = false
      for j = n:i+1,
          if a[j] < a[j-1],
              swap a[j,j-1]
              swapped = true
      → invariant: a[1..i] in final position
      break if not swapped
  end
*/
void Bubble(int arrayToSort[], const int length) {
  for (int i = 0; i < length; i++) {
    for (int j = 0; j < length; j++) {
      if (0 == j) continue;                                   /* This algorithm doesn't work when j is 0 */

      int * left = &arrayToSort[(j-1)];
      int * right = &arrayToSort[j];

      if (LGreaterThanR(*left, *right)) Swap(left, right);
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

void PrintContentsWithArray(int *arrPtr, const int length) {
  printf("Printing Contents: ");
  for (int i = 0; i < length; i++) {
    if (i < (length - 1)) {
      printf("%i, ", *arrPtr);
    }
    else if (i < (length)) {
      printf("%i", *arrPtr);
    }
    arrPtr++;
  }
  printf("\n");
}

void PrintContentsWithPointer(int *arrPtr) {
  printf("Printing Contents: ");
  while ('\0' != *arrPtr) {
    printf("%i, ", *arrPtr);
    arrPtr++;
  }
  printf("\n");
}
