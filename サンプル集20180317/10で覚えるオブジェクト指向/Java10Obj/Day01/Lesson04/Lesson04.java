class Modem {
  int speed;
  Modem() {			
    this.speed = 28;
  }

  void connect() {
    System.out.println("ë¨ìx" + this.speed + "KbpsÇ≈ê⁄ë±ÇµÇ‹ÇµÇΩ");
  }
}


class Test{
  public static void main(String args []) {
    Modem modem = new Modem();
    modem.connect();
  }
}


