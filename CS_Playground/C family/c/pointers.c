/*
  Pointers are important because they alow you to actually change values.
  Typically when a value is passed into a function, it is copied.
  When pointers are use the values are passed in.
  This is important because of memory management as well.
*/

#include <stdio.h>

void basicPointers();
void additionalPointers();
void pointersAndArrays();
// int findString(char *input, char *find);

 int main(void) {
   basicPointers();
   additionalPointers();
   pointersAndArrays();

   return 0;
 }

void basicPointers() {
  int x = 1;
  int y = 2;
  int z[10];
  int *pointer;     //Pointer

  pointer = &x;     //Pointer points to x the value of 1
  y = *pointer;     //y is equal to the value of x aka 1, this copies the value to thie variable.
  *pointer = 0;     //pointer now points to 0

  //This creates an address variable (ie this creates a pointer)
  pointer = &z[0]; //pointer now points to z[0]

}

void additionalPointers() {
  int x = 10;
  int *pointer;
  int y;

  pointer = &x;             //Initializes the references itself as an address to x.
  y = *pointer + 1;         //This takes x and then assigns the value of x+1 to y.
  *pointer = *pointer + 10; //This is going to increment the value of x by 10?

  //These are interesting cases because of operator binding.
  *pointer += 1;            //Increments the address that pointer points to.
  ++*pointer;               //Same thing.
  (*pointer)++;             //This does the same thing as above, the parentheses are because of binding.
}

void pointersAndArrays() {
  int a[10];
  int *pa;
  int x = 1;

  pa = &a[0];                   //pa now points to a[0]
  x = *pa;                      //copy!
  x = *(pa+1);                  //This points to a[0]

  //Arrays a literal references to the 0 position of the array.
  int i = 0;
  int arrayAccess = a[i];
  int pointerAccess =*(a+i);  //This is a bool.
  //Interestingly enough a[i] is converted to *(a+i) with array subscripting
  if (arrayAccess == pointerAccess) {
    println("Cool");
  }

}

// int findString(char *input, char *find) {
//
//   int i = 0;
//   while ((*find[i]++ = *input[i]++) != '\0') {
//   }
// }
