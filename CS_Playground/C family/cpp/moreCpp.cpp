#include <iostream>

using namespace std;

struct expObject {
  string name;
};

int main () {

  //Types: bool, char, int, double, unsigned
  //List: {}
  //Lists can be used for conversion (if you do not want to typecast);
  int i = {7.8}; //Will produce a warning that this value is losing precision.
  string statement = {"This is a list of characters, aka a string"};

  //Auto is greate for the creation of generic types and such.
  auto likeVar = 'x'; //Like var in javascript, auto implicitly sets the type.


  cout << i;
  cout << likeVar;

  //Object creation: new
  //Object destruction: delete
  auto createdObj = new expObject{"does nothing"};
  cout << "There shouldn't be anything after the colon: " << createdObj -> name;

  delete createdObj;

}
