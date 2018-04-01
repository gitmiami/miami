abstract class Ball{
  abstract void bound();
}


class BaseBall extends Ball {
  void bound() {
    System.out.println("野球ボールが弾みます");
  }
}

class SoccorBall extends Ball {
  void bound() {
    System.out.println("サッカーボールが弾みます");
  }
}

class RugbyBall extends Ball {
  void bound() {
    System.out.println("ラグビーボールが弾みます");
  }
}

class Test {
  public static void main(String[] args) {
    Ball[] ball = {new BaseBall(), new SoccorBall(), new RugbyBall()};
    for (int i=0; i<ball.length; i++){
      ball[i].bound();
    }
  }
}