class Modem {
  int speed;
  Modem() {			
    this.speed = 28;
  }

  void connect() {
    System.out.println("���x" + this.speed + "Kbps�Őڑ����܂���");
  }
}


class Test{
  public static void main(String args []) {
    Modem modem = new Modem();
    modem.connect();
  }
}


