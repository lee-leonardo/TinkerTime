#include <iostream>

using namespace std;

const int THIS_IS_A_CONSTANT = 5;
constexpr int ANOTHER_CONSTANT = THIS_IS_A_CONSTANT * 3;
constexpr int A_FUNCTIONAL_EXPRESSION(int x) { return x * 3; }

void constants() {
  int usingConstant = ANOTHER_CONSTANT * THIS_IS_A_CONSTANT;
  cout << usingConstant;

  int usingConstExpression = A_FUNCTIONAL_EXPRESSION(3);
  cout << usingConstExpression;

}

int pointersAndArrays() {
  // Interesting trick, as sizes of arrays are treated as constant expressions
  int arrayFromConstantExpr[A_FUNCTIONAL_EXPRESSION(3)] = {0, 1, 2, 3, 4, 5, 6, 7, 8};

// * is the pointer operand, & is the referencing operand.
  int *two = &arrayFromConstantExpr[2]; // two points to arrayConstantExpr[2]
  int alsoTwo = *two; // points to what two points to
  return alsoTwo;

}

void forLoops () {
  // Classic
  for (int i= 0; i < 10; i++) {
    cout << i;
  }

  //On a range
  int fibonacci[2]= {1, 2};
  for (auto current: fibonacci) {
    cout << current;
  }
}

int pointerTraversing() {
  int fibonacci[3] = {0, 1, 2};

  // Using & (reference operand)
  // This accesses the original value, typically this would copy the value,
  // including if it is a pointer without reference
    int *copyA = &fibonacci;
    for (auto &fibNum: fibonacci) {
        fibNum++; // Adds one to the value in fibNum.
        cout << fibNum;
    }

    //For loop with references and copying via pointer
    int copyB[2] = *fibonacci;
    int count = 0;
    for (; *copyB; ++copyB) {
      if (*copyB==1) {
        ++count;
      }
    }
  }
}

int main() {

// Show declarator operators
  constants();
  int result = pointersAndArrays();
  cout << result;

  forLoops();

  // nullpointer, used to declare
  int* isNull = nullptr;

  // To check if a value is null! This is important!
  if (isNull == nullptr) {
    cout << "The value isNull is null!";
  };


// cin is input!
}
