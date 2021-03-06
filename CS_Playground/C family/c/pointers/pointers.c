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
int lengthOfString(char *string);
int substringLength(char *start, char *charToFind);
void stringCopy(char *newPointer, char *oldString);
void stringComparison(char *newPointer, char *oldPointer);

 int main(void) {
   basicPointers();
   additionalPointers();
   pointersAndArrays();
   lengthOfString("this is a string");
   substringLength("this is a string", 's');
   stringCopy("this should work", 's');

   char *prettyAwesome = "";
   stringComparison(prettyAwesome, "old regalia");

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
    printf("Cool");
  }
}

//This iterates through the pointer, incrementing the position by 1 each time counting each character.
int lengthOfString(char *string) {
  int n;
  //String++ increments the copy of the pointer,, this is different than *string++ (which would grab the value of string and add 1).
  for (n = 0; *string != '\0'; string++) {
    n++;
  }
  return n;
}

int substringLength(char *start, char *charToFind) {
  char *loc = start;

  while(loc != charToFind && loc != '\0') {
    loc++;
  }
  return loc - start; // This is possible because both loc and start are positions in a string, like an address.
}

/*
  This capitalizes on how C does evaluation of operators.
  1. To resolve the conditional of the loop
  1.1. The internal parethentical scope will resolve first.
  1.1.1. The left side is found and awaits assignment.
  1.1.2. The value of the right side is found.
  1.1.3. The right side value is then assigned to the left.
  1.2. The conditional is evaluated.
  2. Loop continutes.
*/

// s = t would copy the pointer (the address to the start of t), not the string itself.
// The reason why we can assign these values is because we are not copying but passing in the values via atheir address.
void stringCopy(char *newPointer, char *oldString) {
  // Array version
  int iterator = 0;
  while ((newPointer[iterator] = oldString[iterator]) != '\0') {
    iterator++;
  }

  // Pointer version
  while ((*newPointer = *oldString) != '\0') {
    oldString++;
  }

  //Terse version
  while ((*newPointer++ = *oldString++) != '\0');

  //Super terse, works because '\0' is the null terimination string.
  while ((*newPointer++ = *oldString++));

}

void stringComparison(char *newPointer, char *oldPointer) {
  int iterator = 0, sum = 0;

  // Array version
  for (iterator = 0; newPointer[iterator] == oldPointer[iterator]; iterator++) {
    if (newPointer[iterator] == '\0') {
      sum = 0;
    }
  }
  sum = newPointer[iterator] - oldPointer[iterator];

  //Poitner version
  for (; *newPointer == *oldPointer; newPointer++, oldPointer++) {
    if (*newPointer == '\0') {
      sum = 0;
    }
  }
  sum = *newPointer - *oldPointer;
}

/*
  For stacks:
  //Push
  *p++ = val;
  //Pop
  val = *--p;
*/

/*
  Last thoughts on pointers
    1. Pointers are initialized like variables, but the * in initialization indicates it is a pointer to the value type.
      * Prototype: type * variableName = &variableAddress
    2. The value of a pointer is the address (accessed by the address operator) of a variable.
      * Example: p1 = &val1
      A. Since the value pointers are addresses the address operator (&), we can treat it like normal assignment.
        * Example: p1 = p2
    3. One accesses the value pointed to by the pointer by a consequent use of a * after initialization.
      * Usage: type newVariable = value + *p1
      * Re-assignment: *p1 = anotherValue
    4. Pointers have their own addresses, which are accessed by the address operator (&).
*/

/*
  Analogy: Email, and Email Forwarding
*/
