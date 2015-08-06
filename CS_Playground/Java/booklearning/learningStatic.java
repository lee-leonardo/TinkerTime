/*
  static - allows for a method to run without an instance of a class.
    * static methods are a telling sign that a class isn't to be instantiated.
    * marking a constructor as private is a good way of preventing unintentional instantiation.
    * used to create members of an object prior to be used by itself.
    * accessible to all objects of its class and without reference to an object.
    * static variables are essentially global variables (within the Class as a namespace).
    * static variables are shared throughout all the instances of the class.

  caveats
    * no reference to this.
    * can only access static data, and can only call static methods.
    * static methods cannot use non-static instance variables.
    * static methods cannot use non-static methods.
    * static variables contain the same value across all the classes.
    * static variables are initialized before any object of the class can be created and before static methods of that class can run.
    * the static block is runs to do setup before a class can be constructed into objects.
  Style
    * constants should be in all caps!

  final - good for constants, as it prevents
    * thus final static variables are essentially macros in C.

  There's a Object wrapper for each Primitive type.
    * Starts with a capital letter!
    * boolean -> Boolean
    * char -> Character
    * byte -> Byte
    * you get the idea.
  This is important for things liek ArrayLists, which need an object type.
  Autoboxing - Java 5+. Automatic conversion of primtitive to wrapper objects. AKA interchangeable.
  * works in arguments, return values, boolean expressions, operations, and assignment.
  * parsing methods to convert strings to primitives and vv.
*/
