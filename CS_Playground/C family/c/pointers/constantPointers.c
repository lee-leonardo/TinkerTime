#include <stdlib.h>

void constantsExample();
void constantsToNonConstants();
void constantPointersToConstants();
void pointerToConstantPointerToConstant();

int main(void) {
  constantsExample();
  constantsToNonConstants();
  return 0;
}

/*
  Pointers to constants
    * can be asigned to point to different constant
    * can be used to asign to point to different non-constants
    * can be dereferenced
    * cannot use dereferencing to change what it points to
*/
void constantsExample() {
  //Pointers to constants cannot be used to modify the value that it is referencing
  int num = 5;
  const int limit = 500;
  int *pi;
  const int *pci;

  pi = &num;
  pci = &limit;

  printf("  num - Address: %p value: %d\n", &num, num);
  printf("limit - Address: %p value: %d\n", &limit, limit);
  printf("   pi - Address %p value : %p\n", &pi, pi);
  printf("  pci - Address %p value : %p\n", &pci, pci);
  printf("%d\n", *pci);

  //We cannot use the dereference to change the reference of the pointer.
  //The pointer itself can change as the pointer value itself is not constant.
  pci = &num; //Legal
//*pci = 200; //This is illegal, cannot use pci to modify the value, however pi can.
}

/*
  Constant Pointers to Non-Constants
  Situation
    * constant pointer must be assigned to non-constant.
  Caveats
    * constant pointer cannot be modified
    * data pointed to by the point can be modified
*/
void constantsToNonConstants() {
  int limit = 5;
  int num;
  int *const cpi = &num; //Pointer cannot be changed, but the data pointed to can.

  // Can assign a new value via dereferencing
  *cpi = limit;
  *cpi = 25;

  //Warnings
  const int limiting = 500;
  int * const cpi2 = &limit; // cpi2 in this case allows for modification of limiting... defeats the purpose of constants

  //Illegal
  int reassign = 10;
//cpi = &age; //This is an illegal because once a address is assigned to a constant pointer, it cannot be reassigned.
}

/*
  Constant Pointer to Constants
    * Used rarely because it is inflexible.
  Properties
    * Cannot be changed and the data it points to cannot be changed by dereferencing
*/
void constantPointersToConstants() {
  int limit = 5;
  int num = 10;
  const int * const cpci = &limit; //Must initialize on declaration.

  // Illegal
  // cpci = &num;
  // *pci = 25;
}

/*
  Pointer to Constant Pointer to Constant
    * Just demonstrates that constant pointers can have multiple levels of indirection.
*/
void pointerToConstantPointerToConstant() {
  int limit = 5;
  const int * const cpci = &limit;
  const int * const * pcpci = &cpci;

  printf("%d\n", *cpci);
  printf("%d\n", **pcpci);
}
