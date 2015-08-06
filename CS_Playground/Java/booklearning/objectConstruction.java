/*
  Concepts
    ~ Stack - Place in memory where methods and local variables live
    ~ Heap - Where objects live
    ~ Instance variable - Declared in classes
    ~ Local variable - Declared in methods
    * Calling methods add a stack frame to the stack.
    * When a method is done executing, the method is popped off the stack.
    * Methods are given references to objects.
  Object Creation
    1. Declaration
    2. Creation
    3. Assignment
    * Type reference = constructor
  Constructor
    * Code to run when you instantiate an object.
    * Essentially you 'step in' on object creation to do some handling such as value assignment.
    * Getters and Setters need to be declared if you desire '2-step object creation' (or just want it to be able to change later).
    * Tip: always make a default constructor, so that you always have objects with initialized variables.
    * Instance variables are assigned a default value, local variables are not!
    * Once you make one constructor, the compiler will give you ownership in creating all constructors.
    * Overloading - concept of writing multiple constructors/methods for your class.
      * Overloading works as long as the argument-list is different for each declaration.
  Constructors that call other constructors
    * Constructors can call other constructors.
    * Must be the first statement.
    * Can have either a this() or a super(), not both.
  Life
    * Object life is dependent on the reference.
    * Once the reference is out of scope permanently (like the stack resolves), the object is then able to be garbage collected.
    * If an object is reassigned it's value, the original object is garbage collected.
    * If an object's reference is set to null it is garbage collected.
*/
