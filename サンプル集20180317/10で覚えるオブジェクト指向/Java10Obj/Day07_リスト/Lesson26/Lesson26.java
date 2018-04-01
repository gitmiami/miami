import java.util.*;

class Test {
  public static void main(String[] args) {
    HashMap hmap = new HashMap();
    hmap.put("Œ¢","Dog");
    hmap.put("”L","Cat");
    hmap.put("”n","Horse");
    hmap.put("—r","Sheep");
    hmap.put("ŒÕ","Tiger");
    
    System.out.println(hmap);

    System.out.println("---------ŒŸõ-------------");
    System.out.println("u—rv‚Ì‰pŒê–ó‚Í" + hmap.get("—r") + "‚Å‚·");

    System.out.println("---------ˆê——-------------");
    Set set = hmap.entrySet();
    Iterator itr = set.iterator();
    while(itr.hasNext()){
      Map.Entry mape = (Map.Entry) itr.next();
      System.out.println(mape.getKey() + "‚Ì‰pŒê–ó‚Í" + mape.getValue() + "‚Å‚·");
    }
  }
}
