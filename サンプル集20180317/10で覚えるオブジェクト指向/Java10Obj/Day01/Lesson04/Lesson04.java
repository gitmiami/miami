class Modem {
  int speed;
  Modem() {			
    this.speed = 28;
  }

  void connect() {
    System.out.println("速度" + this.speed + "Kbpsで接続しました");
  }
}


class Test{
  public static void main(String args []) {
    Modem modem = new Modem();
    modem.connect();
  }
}


