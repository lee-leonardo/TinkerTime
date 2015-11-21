#include "bubble.h"
#include "eo.c"
#include <stdio.h>

void BubbleExample(void);
void EveryOtherExample(void);

int main (void) {
  // BubbleExample();
  EveryOtherExample();

  return 0;
}

void BubbleExample(void) {
  printf("Start of Bubble Sort testing.\n");
  int array[] = {8,7,6,5,4,3,2,1};
  int arrayLength = sizeof(array) / sizeof(array[0]);

  PrintContentsWithArray(&array[0], arrayLength);
  Bubble(array, arrayLength);
  PrintContentsWithArray(&array[0], arrayLength);
}

void EveryOtherExample(void) {
  printf("Start of Bubble Sort testing.\n");
  int array[] = {8,7,6,5,4,3,2,1};
  int arrayLength = sizeof(array) / sizeof(array[0]);

  PrintContentsWithArray(&array[0], arrayLength);
  EveryOtherBubbleSort(array, arrayLength);
  PrintContentsWithArray(&array[0], arrayLength);
}
