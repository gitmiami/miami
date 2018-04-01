class StockManager{
  private String order_no;
  public StockManager(String order_no) {
    this.order_no = order_no;
  }
  
  public boolean checkStock(){
    if (order_no.equals("00000")) {
      return false;
    }else{
      return true;
    }
  }
}

class CustomerManager {
  private String customer;

  public CustomerManager(String customer){
    this.customer = customer;
  }

  public String getCustomersAddress() {
    if (this.customer.equals("Shoeisha")) {
      return "東京都新宿区舟町5番";
    } else {
      return "日本国某市某町某丁目";
    }
  }
}

class TransportManager{
  private String transporter;
  public TransportManager(String transporter){
    this.transporter=transporter;
  }

  public int checkDeriveryDate() {
    if (transporter.equals("Shironeko-Tomato") ){
      return 1;
    }else{
      return 3;
    }
  }
}


class ShippingManager {
  private ShippingManager() {}

  public static void ship(String order_no, String customer, String transporter) {
    StockManager stm = new StockManager(order_no);
    if (stm.checkStock() == true) {
      System.out.println("オーダー��:" + order_no + "の在庫を確保しました");
      CustomerManager ctm = new CustomerManager(customer);
      System.out.println("発送先： " + ctm.getCustomersAddress() + " " + customer + "様");

      System.out.println("運送会社：　" + transporter + "　で発送します");
      TransportManager tm = new TransportManager(transporter);
      System.out.println("到着予定日は今日から" + tm.checkDeriveryDate() + "日後です");
      System.out.println("出荷処理を完了しました");
    } else {
      System.out.println("オーダー��:" + order_no + "は在庫切れです");
      System.out.println("出荷処理を中止しました");
    }
  }
}


class Test {
  public static void main(String[] args) {
    ShippingManager.ship(args[0], args[1], args[2]);
  }
}





