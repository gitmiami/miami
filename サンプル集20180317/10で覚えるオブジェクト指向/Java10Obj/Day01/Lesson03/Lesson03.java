class Modem {
  int speed;
  void connect() {
    System.out.println("速度" + this.speed + "Kbpsで接続しました");
  }
}


class Test{
  public static void main(String args []) {
    Modem modem = new Modem();
    modem.speed = 56;
    System.out.println("このモデムの接続速度を" + modem.speed + "Kbpsにしました");
    modem.connect();
  }
}

