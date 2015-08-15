#include <stdlib.h>
#include <string.h>
/*
  Basic Dynamic Memory Tips:
    * Allocate to a pointer once. Reallocating without free being called loses the original reference.
    * Allocate only as much memory as you need for strings (does this apply to arrays as well?), as hittings an uninitialized value is treated as the null char ''\0'
    * When iterating through a chunk of memory to write, be sure to know the size as the end has vital heap information for the memory.
*/

void dynamicMemory101();
void mallocNuances();

int main(void) {

  return 0;
}

void dynamicMemory101() {
  int assignedToIntArray[4] = {0, 1, 2, 3};

  //Variable initialization using malloc. Need to have specific amount of size to do properly.
  //Giving malloc a integer value allocates that many bytes.
  //Obviously cannot be used with a static variable.
  int *allocatingForInt = malloc(sizeof(int));
  int *allocatingSpaceIntArray4 = malloc(4 * sizeof(int));

  //Assignment to the variables
  *allocatingForInt = 5;
  allocatingSpaceIntArray4 = &assignedToIntArray[0];

  //Allocated memory needs to be freed manually. This isn't Java or Objective-C.
  free(allocatingForInt);
  free(allocatingSpaceIntArray4);
}

void mallocNuances() {
  int *exampleInt = malloc(sizeof(int));

  // Should always check if the space allocated successfully
  if (exampleInt != NULL) {
    *exampleInt = 5;
  } else {
    //Bad pointer...
  }
  free(exampleInt);
}

void callocKnow() {
  //Allocates and clears memory.
  //Will return null if the memory cannot be allocated.
  //Used to aid allocation of memory for arrays.
  int *numViaCalloc = calloc(5, sizeof(int));
  free(numViaCalloc);

  // calloc does the same thing as below
  int *numLikeCallocByMalloc = malloc(5 * sizeof(int));
  memset(numLikeCallocByMalloc, 0, 5*sizeof(int)); //In string.h
  free(numLikeCallocByMalloc);
}


void reallocKnow() {
  //To increase or decrease already allocated memory.
  char *susan = "Susan";
  char *name = (char*)malloc(strlen(susan)+1);
  char *reallocatedMemory;
  strcpy(name, susan); //Problematic as there's a chance that the address can be lost if the address advances to name[6] as it is the null terminating character (it is before heap information).
  reallocatedMemory = realloc(name, 4); //This can reuse the address, but will not modify the contents for us as the string susan uses more than 4 bytes.
  //To do it this way we would need to modify the string nulling specific address values to allow it to conform to 4 bytes work of space.
  reallocatedMemory = realloc(name, sizeof(susan)); //This is a nicer way of ensuring the correct amount of memory is used.
  reallocatedMemory = realloc(name, 64); //Since this requires more memory than the current address it will create a new memory address and allocate 64 bytes.
  free(name);
  free(reallocatedMemory);
}
