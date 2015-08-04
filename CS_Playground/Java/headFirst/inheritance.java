class SuperClass {
  public boolean isValue;

  public boolean isExtended() {
    return isValue;
  }

  // Private members are not inherited, but public members are.
  public boolean membersInherited; // Inherited as if it has been declated itself.
  private boolean membersAreAlsoNot; // Not inherited by subclass, need to redefine;
  default boolean curiousWhatThisDoes; //Covered later...
  protected boolean membersAreNot; // Covered later...
}

class Inheritor extends SuperClass {
  // Variables do not need to be overridden, they are just redefined, reassigned values.

  public void hasAnotherMethod() {
    System.out.println("Can create new methods in extended classes");
  }

  //Functions can be overridden.
  public boolean isExtended() {
    return !this.isValue;
  }
}

class Neat {
  static public void main() {
    //A neat thing is that the SuperClass can be used as an umbrella type for classes that inherit from it.

    SuperClass[] classes = new SuperClass[2];
    classes[0] = new SuperClass();
    classes[1] = new Inheritor();
  }

  // Super valuable from polymorphism.
  // A method that returns an object that either inherits from SuperClass or something that inherits from it.
  SuperClass willReturnInheritor(SuperClass shouldBeInhertor, boolean noneOfTheAbove) {
    if (shouldBeInhertor != null) {
      return shouldBeInhertor;
    } else if (noneOfTheAbove) {
      return new Inheritor();
    } else {
      return new SuperClass();
    }
  }
}

/*
  Going more than 2 levels deeps is concerning... especially for simple.

  Overriding needs to keep 2 things in mind:
  1. Arguments and return must be type compatible.
  2. Accessibility level for the method must be the same as the superclasses.
*/
