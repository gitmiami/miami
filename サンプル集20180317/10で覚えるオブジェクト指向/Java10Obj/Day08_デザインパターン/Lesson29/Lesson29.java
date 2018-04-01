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
      return "“Œ‹“sVh‹æM’¬5”Ô";
    } else {
      return "“ú–{‘–^s–^’¬–^’š–Ú";
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
      System.out.println("ƒI[ƒ_[‡‚:" + order_no + "‚ÌİŒÉ‚ğŠm•Û‚µ‚Ü‚µ‚½");
      CustomerManager ctm = new CustomerManager(customer);
      System.out.println("”­‘—æF " + ctm.getCustomersAddress() + " " + customer + "—l");

      System.out.println("‰^‘—‰ïĞF@" + transporter + "@‚Å”­‘—‚µ‚Ü‚·");
      TransportManager tm = new TransportManager(transporter);
      System.out.println("“’…—\’è“ú‚Í¡“ú‚©‚ç" + tm.checkDeriveryDate() + "“úŒã‚Å‚·");
      System.out.println("o‰×ˆ—‚ğŠ®—¹‚µ‚Ü‚µ‚½");
    } else {
      System.out.println("ƒI[ƒ_[‡‚:" + order_no + "‚ÍİŒÉØ‚ê‚Å‚·");
      System.out.println("o‰×ˆ—‚ğ’†~‚µ‚Ü‚µ‚½");
    }
  }
}


class Test {
  public static void main(String[] args) {
    ShippingManager.ship(args[0], args[1], args[2]);
  }
}





