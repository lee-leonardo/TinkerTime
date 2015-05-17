class PE1 {

  public static void main(String args[]) {
    int sum = 0;
    int multiplesOf1000 = multiples(1000)

    System.out.println("Fizz Buzz Sum up to 1000.");
    System.out.println("Answer is:" + multiplesOf1000);
  }

  private int multiples(int number) {
    int multiples = 0;

    for (int i = 0; i < number; i++) {
      if (i % 3 == 0 | i % 5 == 0) {
        multiples = multiples + i;
      }
    }
  }
  return multiples;
}
