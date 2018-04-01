import java.util.*;

class Test {
  public static void main(String[] args) {
    String[] animals = {"dog", "cat", "monkey", "bear", "elephant"};
    ArrayList list = new ArrayList(Arrays.asList(animals));
    System.out.println(list);
    Iterator itr = list.iterator();
    while(itr.hasNext()) {
      System.out.println(itr.next());
    }
  }
}
