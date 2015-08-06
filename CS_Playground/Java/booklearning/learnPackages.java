/*
  Packages
    * A mechanism to organize related pieces of a program
    * A way that Java manages it's access control mechanisms
  Why?
    * No two classes can have the same name in a java namespace.
    * Classes witout a package declaration use the global namespace.
    * Packages provide a way to partition the namespace, making naming easier.
  Benefits
    * Classes are only accessible by other classes in the same package.
  Organization
    * Java uses the file system to manage packages.
    * Each package has it's own directory.
    * Case Sensitive!
    * Packages can have subpackages, which are separated by '.'
  Caveats
    * The program must be executed immediately above the package to use it.
    * CLASSPATH variable helps find directories and such.
*/
package learningHow;

/*
  Member Access
    * private - only visible to members in the class
    * default - accessible to package
    * protected - accessible to to package and external classes that subclass
      * protects against external access.
    * public - accessible to external code
*/
public class PublicLibrary {
  // Can still have variables that only it has access to.
  private boolean open;

  // Usable by other packages.
  public checkOutBook(String bookName) {

  }
  public returnBook(String bookName) {

  }
}
