import java.util.*;

class Test {
  public static void main(String[] args) {
    HashMap hmap = new HashMap();
    hmap.put("��","Dog");
    hmap.put("�L","Cat");
    hmap.put("�n","Horse");
    hmap.put("�r","Sheep");
    hmap.put("��","Tiger");
    
    System.out.println(hmap);

    System.out.println("---------����-------------");
    System.out.println("�u�r�v�̉p����" + hmap.get("�r") + "�ł�");

    System.out.println("---------�ꗗ-------------");
    Set set = hmap.entrySet();
    Iterator itr = set.iterator();
    while(itr.hasNext()){
      Map.Entry mape = (Map.Entry) itr.next();
      System.out.println(mape.getKey() + "�̉p����" + mape.getValue() + "�ł�");
    }
  }
}
