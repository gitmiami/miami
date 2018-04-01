import java.util.*;

class Test {
  public static void main(String[] args) {
    String[] animals = {"dog", "cat", "monkey", "bear", "elephant"};
    Vector vct = new Vector(Arrays.asList(animals));

    System.out.println("vct‚Ì—v‘f”‚Í" + vct.size() + "‚Å‚·");
    for (int i=0; i < vct.size(); i++) {
      System.out.println(i + ": " + (String)(vct.get(i)));
    }
    
    vct.addElement("tiger");
    vct.add(0, "lion");
    System.out.println("vct‚Ì—v‘f”‚Í" + vct.size() + "‚Å‚·");
    for (int i=0; i < vct.size(); i++) {
      System.out.println(i + ": " + (String)(vct.get(i)));
    }

    vct.remove(0);
    System.out.println("vct‚Ì—v‘f”‚Í" + vct.size() + "‚Å‚·");
    for (int i=0; i < vct.size(); i++) {
      System.out.println(i + ": " + (String)(vct.get(i)));
    }

    vct.removeAllElements();
    System.out.println("vct‚Ì—v‘f”‚Í" + vct.size() + "‚Å‚·");
    for (int i=0; i < vct.size(); i++) {
      System.out.println(i + ": " + (String)(vct.get(i)));
    }
  }
}
