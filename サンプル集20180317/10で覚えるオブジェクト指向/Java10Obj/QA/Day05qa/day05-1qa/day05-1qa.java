abstract class Ball{
  abstract void bound();
}


class BaseBall extends Ball {
  void bound() {
    System.out.println("�싅�{�[�����e�݂܂�");
  }
}

class SoccorBall extends Ball {
  void bound() {
    System.out.println("�T�b�J�[�{�[�����e�݂܂�");
  }
}

class RugbyBall extends Ball {
  void bound() {
    System.out.println("���O�r�[�{�[�����e�݂܂�");
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