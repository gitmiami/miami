import java.io.*;

interface Player {
  int number = 10;
  void play();
  void stop();
}


class CassettePlayer implements Player{
  public void play() {
    System.out.println("カセットの演奏を開始します");
    System.out.println("♪♪♪チャリラリラ～ン♪♪♪");
  }
  
  public void stop() {
    System.out.println("カセットの演奏を停止しました");
  }
  
  public String toString() {
    return "カセットプレーヤー";
  }
}


class CDPlayer implements Player {
  public void play() {
    System.out.println("ＣＤの演奏を開始します");
	System.out.println("♪♪♪チャリラリラ～ン♪♪♪");
  }
  
  public void stop() {
    System.out.println("ＣＤの演奏を停止しました");
  }
  
  public String toString() {
    return "ＣＤプレーヤー";
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
      System.out.println("チャンネルを" + mc.getCurrentPlayer().toString() + "にセットしました");
      mc.play();
      mc.stop();
      
    }
  }
}







