class LogicalOpTable {
  public static void main(String args[]) {
    bool(args);
  }

  public static void bool(String args[]) {
    boolean p, q;

    System.out.println("P\tQ\tAND\tOR\tXOR\tNOT");

    p = true; q = true;
    System.out.print(p + "\t" + q + "\t");
    System.out.print((p&q) + "\t" + (p|q) + "\t");
    System.out.println((p^q) + "\t" + (!p));

    p = true; q = false;
    System.out.print(p + "\t" + q + "\t");
    System.out.print((p&q) + "\t" + (p|q) + "\t");
    System.out.println((p^q) + "\t" + (!p));

    p = false; q = true;
    System.out.print(p + "\t" + q + "\t");
    System.out.print((p&q) + "\t" + (p|q) + "\t");
    System.out.println((p^q) + "\t" + (!p));

    p = false; q = false;
    System.out.print(p + "\t" + q + "\t");
    System.out.print((p&q) + "\t" + (p|q) + "\t");
    System.out.println((p^q) + "\t" + (!p));
  }

// Trying to  get ints to act as bools.
  // public static void integer(String args[]) {
  //   int p, q;
  //
  //   System.out.println("P\tQ\tAND\tOR\tXOR\tNOT");
  //
  //   p = true; q = true;
  //   System.out.print(p + "\t" + q + "\t");
  //   System.out.print((p&q) + "\t" + (p|q) + "\t");
  //   System.out.println((p^q) + "\t" + (!p));
  //
  //   p = true; q = false;
  //   System.out.print(p + "\t" + q + "\t");
  //   System.out.print((p&q) + "\t" + (p|q) + "\t");
  //   System.out.println((p^q) + "\t" + (!p));
  //
  //   p = false; q = true;
  //   System.out.print(p + "\t" + q + "\t");
  //   System.out.print((p&q) + "\t" + (p|q) + "\t");
  //   System.out.println((p^q) + "\t" + (!p));
  //
  //   p = false; q = false;
  //   System.out.print(p + "\t" + q + "\t");
  //   System.out.print((p&q) + "\t" + (p|q) + "\t");
  //   System.out.println((p^q) + "\t" + (!p));
  // }
}
