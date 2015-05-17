class Overload {
  void overloadedMethod() {
    System.out.println("Overloaded");
  }

  void overloadedMethod(String here) {
    System.out.println("Overloaded" + here);
  }

  void overloadedMethod(String thisString, String andAnother) {
    System.out.println(thisString + andAnother);
  }
}

class Demo {
  public static void main(String args[]) {
    Overload sample = new Overload();

    String again = "Picanthropus";
    String another = "Parity";

    sample.overloadedMethod(again);
    sample.overloadedMethod(again, another);

    String joyeuse = "joy";
    int one = 1;
    bool fine = true;

    OverloadConstructor i = new OverloadConstructor();
    OverloadConstructor j = new OverloadConstructor(joyuse);
    OverloadConstructor k = new OverloadConstructor(one);
    OverloadConstructor l = new OverloadConstructor(fine);

    System.out.println(i.placed + i.saved + i.recorded);
    System.out.println(j.placed + j.saved + j.recorded);
    System.out.println(k.placed + k.saved + k.recorded);
    System.out.println(l.placed + l.saved + l.recorded);
  }
}

class OverloadConstructor {
  String placed;
  int saved;
  bool recorded;

  OverloadConstructor() {
    placed = "Sample";
    saved = 5;
    recorded = false;
  }
  OverloadConstructor(String here) {
    placed = here;
  }
  OverloadConstructor(int here) {
    saved = here;
  }
  OverloadConstructor(bool here) {
    recorded = here;
  }
}
