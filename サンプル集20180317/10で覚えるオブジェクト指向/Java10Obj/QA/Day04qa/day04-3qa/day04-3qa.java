class CDPlayer {
  void playCD(){
    System.out.println("CD�����t���܂�");
  }
  void stopCD(){
    System.out.println("CD���t���~���܂�");
  }
}

class MiniCompo {
  CDPlayer cd;
  MiniCompo() {
    this.cd = new CDPlayer();
  }
  
  void playCD() {
    cd.playCD();
  }
  
  void stopCD() {
    cd.stopCD();
  }
}

