class Recursive {
  int factorial(int number) {
    int result;
    if (n == 1) return 1;
    result = factorial(n-1) * n;
    return result;
  }
}

class Demo {
  public static void main(String args[]) {
    Recusive example = new Recursive();

    System.out.println(example.factorial(5));
  }
}
