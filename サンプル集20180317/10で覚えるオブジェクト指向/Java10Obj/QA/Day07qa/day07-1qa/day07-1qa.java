import java.util.*;

class Test {
  public static void main(String[] args) {
    String[] animals = {"dog", "cat", "monkey", "bear", 
												"elephant"};
    ArrayList arr = new ArrayList(Arrays.asList(animals));

    System.out.println("arrの要素数は" + arr.size() + "です");
    for (int i=0; i < arr.size(); i++) {
      System.out.println(i + ": " + (String)(arr.get(i)));
    }
    
    arr.add("tiger");
    arr.add(0, "lion");
    System.out.println("arrの要素数は" + arr.size() + "です");
    for (int i=0; i < arr.size(); i++) {
      System.out.println(i + ": " + (String)(arr.get(i)));
    }

    arr.remove(0);
    System.out.println("arrの要素数は" + arr.size() + "です");
    for (int i=0; i < arr.size(); i++) {
      System.out.println(i + ": " + (String)(arr.get(i)));
    }

    arr.clear();
    System.out.println("arrの要素数は" + arr.size() + "です");
    for (int i=0; i < arr.size(); i++) {
      System.out.println(i + ": " + (String)(arr.get(i)));
    }
  }
}