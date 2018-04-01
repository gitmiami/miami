import java.util.*;

class Test {
  public static void main(String[] args) {
    String[] animals = {"dog", "cat", "monkey", "bear", 
												"elephant"};
    ArrayList arr = new ArrayList(Arrays.asList(animals));

    System.out.println("arr‚Ì—v‘f”‚Í" + arr.size() + "‚Å‚·");
    for (int i=0; i < arr.size(); i++) {
      System.out.println(i + ": " + (String)(arr.get(i)));
    }
    
    arr.add("tiger");
    arr.add(0, "lion");
    System.out.println("arr‚Ì—v‘f”‚Í" + arr.size() + "‚Å‚·");
    for (int i=0; i < arr.size(); i++) {
      System.out.println(i + ": " + (String)(arr.get(i)));
    }

    arr.remove(0);
    System.out.println("arr‚Ì—v‘f”‚Í" + arr.size() + "‚Å‚·");
    for (int i=0; i < arr.size(); i++) {
      System.out.println(i + ": " + (String)(arr.get(i)));
    }

    arr.clear();
    System.out.println("arr‚Ì—v‘f”‚Í" + arr.size() + "‚Å‚·");
    for (int i=0; i < arr.size(); i++) {
      System.out.println(i + ": " + (String)(arr.get(i)));
    }
  }
}