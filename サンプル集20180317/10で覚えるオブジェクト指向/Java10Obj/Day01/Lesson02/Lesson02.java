class Modem {
  int speed;
}

class Test{
  public static void main(String args []) {
    Modem modem = new Modem();
    modem.speed = 56;
    System.out.println("このモデムの接続速度を" + modem.speed + "Kbpsにしました");
  }
}
