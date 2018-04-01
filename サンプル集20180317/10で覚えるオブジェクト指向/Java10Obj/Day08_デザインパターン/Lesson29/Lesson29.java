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
      return "�����s�V�h��M��5��";
    } else {
      return "���{���^�s�^���^����";
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
      System.out.println("�I�[�_�[��:" + order_no + "�̍݌ɂ��m�ۂ��܂���");
      CustomerManager ctm = new CustomerManager(customer);
      System.out.println("������F " + ctm.getCustomersAddress() + " " + customer + "�l");

      System.out.println("�^����ЁF�@" + transporter + "�@�Ŕ������܂�");
      TransportManager tm = new TransportManager(transporter);
      System.out.println("�����\����͍�������" + tm.checkDeriveryDate() + "����ł�");
      System.out.println("�o�׏������������܂���");
    } else {
      System.out.println("�I�[�_�[��:" + order_no + "�͍݌ɐ؂�ł�");
      System.out.println("�o�׏����𒆎~���܂���");
    }
  }
}


class Test {
  public static void main(String[] args) {
    ShippingManager.ship(args[0], args[1], args[2]);
  }
}





