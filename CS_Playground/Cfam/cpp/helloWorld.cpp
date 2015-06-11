#include <iostream>

using namespace std;

void hello() {
  // This is an inline use of std.
  std::cout << "HelloWorld!\n";
}

double squareNum(double x) {
  return x * x;
}

int main() {
  hello();

  int five = 5;
  double twentyFive = squareNum((double)five);

  //A way you can do interpolated strings.
  cout << "The square of " << five << "is " << twentyFive << "\n";
}
