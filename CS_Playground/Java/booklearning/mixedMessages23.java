public class mixedMessages23 {
  public static void main (String[] args) {
    candidate1();
    candidate2();
    candidate3();
    candidate4();
    candidate5();
  }
  public static void candidate1() {
    //00 11 21 32 42
    int x = 0;
    int y = 0;
    while (x < 5) {
      y = x - y;
      System.out.print(x + ""+ y+" ");
      x = x + 1;
    }
    System.out.println();
  }
  public static void candidate2() {
    //00 11 23 36 410
    int x = 0;
    int y = 0;
    while (x < 5) {
      y = y + x;
      System.out.print(x + ""+ y+" ");
      x = x + 1;
    }
    System.out.println();
  }
  public static void candidate3() {
    //02 14 25 36 47
    int x = 0;
    int y = 0;
    while (x < 5) {
      y = y + 2;
      if (y > 4) {
        y = y - 1;
      }
      System.out.print(x + ""+ y+" ");
      x = x + 1;
    }
    System.out.println();
  }
  public static void candidate4() {
    //11 34 59
    int x = 0;
    int y = 0;
    while (x < 5) {
      x = x + 1;
      y = y + x;
      System.out.print(x + ""+ y+" ");
      x = x + 1;
    }
    System.out.println();
  }
  public static void candidate5() {
    //02 14 36 59 - Wrong! 02 14 36 48... 
    int x = 0;
    int y = 0;
    while (x < 5) {
      if (y < 5) {
        x = x + 1;
        if (y < 3) {
          x = x - 1;
        }
      }
      y = y + 2;
      System.out.print(x + ""+ y+" ");
      x = x + 1;
    }
    System.out.println();
  }
}
