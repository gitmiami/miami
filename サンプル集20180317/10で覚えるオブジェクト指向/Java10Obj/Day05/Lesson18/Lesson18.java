import java.io.*;

interface Player {
  int number = 10;
  void play();
  void stop();
}


class CassettePlayer implements Player{
  public void play() {
    System.out.println("�J�Z�b�g�̉��t���J�n���܂�");
    System.out.println("����`�����������`������");
  }
  
  public void stop() {
    System.out.println("�J�Z�b�g�̉��t���~���܂���");
  }
  
  public String toString() {
    return "�J�Z�b�g�v���[���[";
  }
}


class CDPlayer implements Player {
  public void play() {
    System.out.println("�b�c�̉��t���J�n���܂�");
	System.out.println("����`�����������`������");
  }
  
  public void stop() {
    System.out.println("�b�c�̉��t���~���܂���");
  }
  
  public String toString() {
    return "�b�c�v���[���[";
  }
}




class MiniCompo{
  private Player[] player;
  private Player currentPlayer;
  
  MiniCompo(Player[] player) {
    this.player = player;
    this.currentPlayer = player[0];
  }

  void setCurrentPlayer(int index) {
    this.currentPlayer = this.player[index];
  }
  
  Player getCurrentPlayer() {
    return this.currentPlayer;
  }
  void play() {
    currentPlayer.play();
  }
  
  void stop() {
    currentPlayer.stop();
  }
}


class Test {
  public static void main(String[] args) {
    Player[] player = {new CassettePlayer(), new CDPlayer()};
    MiniCompo mc = new MiniCompo(player);

    for (int i = 0; i < player.length; i++) {
      System.out.println("----------------------------------------");
      mc.setCurrentPlayer(i);
      System.out.println("�`�����l����" + mc.getCurrentPlayer().toString() + "�ɃZ�b�g���܂���");
      mc.play();
      mc.stop();
      
    }
  }
}







