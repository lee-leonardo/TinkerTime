class LogicalOpTable {
  public static void main(String args[]) {
    boolList();
    // intList();
  }

  public static void boolList() {
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

// Trying to  get ints to act as bools. Grr, ask later got material to work on.
  public static void intList() {
    // int p, q;
    //
    // int truthy = 1; int falsey = 0; //Compare equivalency between an expected value and the actual value to do this?
    //
    // System.out.println("P\tQ\tAND\tOR\tXOR\tNOT");
    //
    // p = 1; q = 1;
    // System.out.print(p.equals(truthy) + "\t" + q.equals(truthy) + "\t");
    // System.out.print((p.equals(truthy)&q.equals(truthy)) + "\t" + (p.equals(truthy)|q.equals(truthy)) + "\t");
    // System.out.println((p.equals(truthy)^q.equals(truthy)) + "\t" + (p.equals(falsey)));
    //
    // p = 1; q = 0;
    // System.out.print(p.equals(truthy) + "\t" + q.equals(truthy) + "\t");
    // System.out.print((p.equals(truthy)&q.equals(truthy)) + "\t" + (p.equals(truthy)|q.equals(truthy)) + "\t");
    // System.out.println((p.equals(truthy)^q.equals(truthy)) + "\t" + (p.equals(falsey)));
    //
    // p = 0; q = 1;
    // System.out.print(p.equals(truthy) + "\t" + q.equals(truthy) + "\t");
    // System.out.print((p.equals(truthy)&q.equals(truthy)) + "\t" + (p.equals(truthy)|q.equals(truthy)) + "\t");
    // System.out.println((p.equals(truthy)^q.equals(truthy)) + "\t" + (p.equals(falsey)));
    //
    // p = 0; q = 1;
    // System.out.print(p.equals(truthy) + "\t" + q.equals(truthy) + "\t");
    // System.out.print((p.equals(truthy)&q.equals(truthy)) + "\t" + (p.equals(truthy)|q.equals(truthy)) + "\t");
    // System.out.println((p.equals(truthy)^q.equals(truthy)) + "\t" + (p.equals(falsey)));
  }
}
