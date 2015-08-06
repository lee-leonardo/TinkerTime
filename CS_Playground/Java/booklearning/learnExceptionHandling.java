/*
  Exception Handling in Java is done by 5 keywords: try, catch, throw, throws, finally
    * try - monitors statments, throws exceptions. Can be nested.
    * catch - tries to handle exceptions that are thrown by the try block
    * throw - manually throw an exception
    * throws - specifies the exception, useful for exceptions not handled by the block.
    * finally - resolves whatever happens after the block
  Interesting
    * Exception superclasses will catch all exception subclasses!
*/
public class ExceptionSample {
  public static void main() {
    try {
      int[] list = new int[4];
      int outOfBounds = list[5];

      throw Exception; // How to throw an exception.
    } catch (ArrayIndexOutOfBoundsException e) {
      // catch (Exception e | Exception e)  //For multi-catches.
      System.out.println("Out of bounds");
    } catch (Exception e) {
      //This will catch all types of exceptions that are not ArrayIndexOutOfBoundsException
      System.out.println("Will not show, but would catch");
    }
  }

  //This means that the method does not handle this exception that it can generate.
  public int withThrowsList() throws ArrayIndexOutOfBoundsException {

  }
}

/*
  Custom Exceptions
  Just create an exception that Extends Exception or Throwable.
  All the methods in Throwable then are available to your class.
*/
