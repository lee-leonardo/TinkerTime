#include <stdio.h>
#include <stdlib.h>

/*
  Using malloc requires the standard library alongside standard io.
  The argument for malloc is the size_t. The argument accepts an unsigned integer type.
  (can you imagine it accepting a negative value?).
*/

void demo();

int main (void) {
  demo();
}

void demo() {
  int *pointerA = malloc(4*sizeof(int)); //Allocates
  int *pointerB = malloc(sizeof(int[4])); //Allocates and initializes
  int *pointerC = malloc(4*sizeof *pointerB); //Uses pointerB's type.

  free(pointerA);
  free(pointerB);
  free(pointerC);
}
