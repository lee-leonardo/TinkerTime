class Help {
  public static void main(String args[]) {
    char choice;

    System.out.println("Help on:");
    System.out.println(" 1. if");
    System.out.println(" 2. switch");
    System.out.println("Choose one: ");

    choice = (char) System.in.read();

    System.out.println("\n");

    switch (choice) {
      case '1':
        System.out.println("The if:\n");
        System.out.println("if(condition) statement;");
        System.out.println("else statement;");
        break;
      case '2':
        System.out.println("The switch:\n");
        System.out.println("switch(expressions) {");
        System.out.println(" case contant:");
        System.out.println("  statement sequence");
        System.out.println("  break;");
        System.out.println(" // ...");
        System.out.printlny("}");
        break;
      default:
      System.out.print("Selection not found.");
    }
  }
}
