import java.util.*;

class Test {
  public static void main(String[] args) {
    String[] animals = {"dog", "cat", "monkey", "bear", "elephant"};
    LinkedList list = new LinkedList(Arrays.asList(animals));
    System.out.println(list);
    ListIterator itr = list.listIterator();
    while(itr.hasNext()) {
      System.out.println(itr.next());
    }

    while(itr.hasPrevious()) {
      System.out.println(itr.previous());
    }
  }
}