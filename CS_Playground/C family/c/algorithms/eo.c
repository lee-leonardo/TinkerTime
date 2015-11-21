// #include "bubble.h"
#include <stdio.h>

#ifndef BOOLEAN_H_
#define BOOLEAN_H_

#ifndef __cplusplus
#undef bool
#undef true
#undef false

typedef int bool;
enum { false = 0, true = 1 };
#endif

#endif

bool EveryOtherCheck(const int left, const int right);
void EveryOtherBubbleSort(int arrayToSort[], const int length);

// int main (void) {
//   printf("Start of Bubble Sort testing.\n");
//   int array[] = {8,7,6,5,4,3,2,1};
//   int arrayLength = sizeof(array) / sizeof(array[0]);
//   PrintContentsWithArray(&array[0], arrayLength);
//   EOBubbleSort(array, arrayLength);
//   PrintContentsWithArray(&array[0], arrayLength);
//   return 0;
// }

bool EveryOtherCheck(const int left, const int right) {
  if (left % 2 != 0 && right % 2 == 0) return true;
  if (left > right) return true;
  return false;
}

void EveryOtherBubbleSort(int arrayToSort[], const int length) {
  for (int i = 0; i < length; i++) {
    for (int j = 0; j < length; j++) {
      if (0 == j) continue;                                   /* This algorithm doesn't work when j is 0 */

      int * left = &arrayToSort[(j-1)];
      int * right = &arrayToSort[j];

      if (EveryOtherCheck(*left, *right)) Swap(left, right);
    }
  }
}
