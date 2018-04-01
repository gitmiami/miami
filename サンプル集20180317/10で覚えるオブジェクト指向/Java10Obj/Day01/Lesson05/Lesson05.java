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
    System.out.println("���x" + this.speed + "Kbps�Őڑ����܂���");
  }
}


class Test{
  public static void main(String args []) {
  Modem modem = new Modem();
  System.out.println("�f�t�H���g�̑��x�i28Kbps�j�Ń��f�������܂���");
  modem.setSpeed(64);
  System.out.println("�ڑ����x��" + modem.getSpeed() + "Kbps�ɐݒ肵�܂���");
  modem.connect();
  }
}