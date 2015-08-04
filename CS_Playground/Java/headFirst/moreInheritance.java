/*
  Abstract prevents initialization, but allows for inheritance as normal
  Classes with a initializer are called concrete classes.
  Classes can have only one superclass and any number of interfaces.
  This was to avoid problems with multiple inheritance and the ambiguities that arise from it.

  Polymorphism uses an important Java feature:
    * Dynamic method dispatch, which how Java handles overridden methods in runtime rather than compile time.
    * Polymorphism and method overriding is based on the arguments in Java, if a subclass does not overide a method, then it calls the superclasses.
    * This means that the compiler checks the legality of the methods, at runtime it is decided based on the lowest overidden method.
*/
abstract class Problem {

  /*
    Abstract methods must be overridden, and an Abstract method means that the class must be abstract.
    It also means that the inheriting class must implement the abstract method.
    The abstract modifier cannot be used on static methods or constructors
  */
  public abstract void ponder();

  //Non-abstract methods work the same
  public void eureka() {
    System.out.println("Eureka!");
  }

  // Private variable members cannot be accessed directly by a subclass or any class thus accessors are needed.
  // AKA treat private variables in superclasses as if they are variables in other classes (duh).
  private String problemAbstract;
  public String getProblemAbstract() { return problemAbstract; }
  public setProblemAbstract( String problem ) { this.problemAbstract }
}

class Example extends Problem {
  public void ponder() {
    System.out.println("Pondering!");
  }
  // Overridden method
  public void eureka() {
    this.ponder();
  }
  public void solution() {
    super.eureka(); //Super will run the super's version of a method.
    // super(); //Constructs an objects superclass.
    //Thus super can be used as super() for construction and super.member for access.
  }

}

/*
  Interfaces allow for multiple inheritance.
  An interface is entirely abstract, unlike an abstract class which can have concrete properties.
  Interfaces by default are public and abstract.
*/
public abstract interface Query {
  public abstract void investigate();
}

class Exploration extends Example implements Query {
  public void investigate() {
    System.out.println("Investigating");
  }

}

class Investigation {
  static public void main() {
    // You can allocate memory to a abstract class, you cannot initialize an abstract class.
    Problem toLookAt;
    toLookAt = new Example();
    toLookAt.eureka(); //Since the cast is the supeclass of the object, we only have access to the superclasses methods and variables.
    (Example)toLookAt.eureka(); //This is weird, but gives you the idea how you can call the subclass' eureka();

  }
}
