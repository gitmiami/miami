class CDPlayer {
  void playCD(){
    System.out.println("CD‚ð‰‰‘t‚µ‚Ü‚·");
  }
  void stopCD(){
    System.out.println("CD‰‰‘t‚ð’âŽ~‚µ‚Ü‚·");
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

