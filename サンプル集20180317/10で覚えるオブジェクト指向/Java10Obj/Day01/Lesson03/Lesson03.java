class Modem {
  int speed;
  void connect() {
    System.out.println("‘¬“x" + this.speed + "Kbps‚ÅÚ‘±‚µ‚Ü‚µ‚½");
  }
}


class Test{
  public static void main(String args []) {
    Modem modem = new Modem();
    modem.speed = 56;
    System.out.println("‚±‚Ìƒ‚ƒfƒ€‚ÌÚ‘±‘¬“x‚ğ" + modem.speed + "Kbps‚É‚µ‚Ü‚µ‚½");
    modem.connect();
  }
}

