import java.util.*;

class Test {
  public static void main(String[] args) {
    HashMap hmap = new HashMap();
    hmap.put("Apple", "���");
    hmap.put("Grape", "�Ԃǂ�");
    hmap.put("Orange", "�݂���");
    System.out.println(hmap);
    Set set = hmap.entrySet();
    Iterator itr = set.iterator();
    while(itr.hasNext()) {
      Map.Entry mape = (Map.Entry)itr.next();
      System.out.println(mape.getKey() + "/" + mape.getValue());
    }
  }
}