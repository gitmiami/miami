class Modem {
  private int speed;

  Modem() {
    this.speed = 28;
  }
  
  Modem(int speed) {
    this.speed = speed;
  }
  
  void setSpeed(int speed) {
    if (speed > 0) {
      this.speed = speed;
	}
  }
  
  int getSpeed() {
    return this.speed;
  }
  
  void connect() {
    System.out.println("速度" + this.speed + "Kbpsで接続しました");
  }
}


class Test{
  public static void main(String args []) {
  Modem modem = new Modem();
  System.out.println("デフォルトの速度（28Kbps）でモデムを作りました");
  modem.setSpeed(64);
  System.out.println("接続速度を" + modem.getSpeed() + "Kbpsに設定しました");
  modem.connect();
  }
}