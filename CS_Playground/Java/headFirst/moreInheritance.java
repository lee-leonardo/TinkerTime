//Abstract prevents initialization, but allows for inheritance as normal
// Classes with a initializer are called concrete classes.

abstract class Problem {

  /*
  Abstract methods must be overridden.
  An Abstract method means that the class must be abstract.
  It also means that the inheriting class must implement the method.
  */
  public abstract void ponder();

}

class Example extends Problem {
  public void ponder() {
    System.out.println("Pondering!");
  }

}

// interface Query {
//
// }

class Investigation {
  static public void main() {
    // You can allocate memory to a abstract class, you cannot initialize an abstract class.
    Problem toLookAt;
    toLookAt = new Example();

  }
}
