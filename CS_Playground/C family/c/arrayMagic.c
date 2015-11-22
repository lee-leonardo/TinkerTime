//This is to tinker with this property: <T> nameArray[][x] == <T> (*namedArray)[x]
// Arrays only need to have the number of columns understood
// (this is because the compiler needs to know the size of the array to allocate the correct amount of space.
// Other than that, it is understood that the array is ended by a null terminating character.

#include <stdio.h>
#define ARRAY_LEN 6

int main (void) {
  // int hello[] = {0,1,2,3,4,5};
  // int tryAssign[] = hello;
  //
  // for (int i = 0; i < ARRAY_LEN; i++) {
  //   printf("%i ", hello[i]);
  // }
  return 0;
}
