class Modem {
  int speed;
  void connect() {
    System.out.println("���x" + this.speed + "Kbps�Őڑ����܂���");
  }
}


class Test{
  public static void main(String args []) {
    Modem modem = new Modem();
    modem.speed = 56;
    System.out.println("���̃��f���̐ڑ����x��" + modem.speed + "Kbps�ɂ��܂���");
    modem.connect();
  }
}

