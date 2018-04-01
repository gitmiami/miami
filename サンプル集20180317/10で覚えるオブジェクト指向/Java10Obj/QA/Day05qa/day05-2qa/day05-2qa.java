import java.io.*;

interface Outputable {
  void output();
}

abstract class Output implements Outputable{
  protected String string;
  void setString(String string){
    this.string = string;
  }
  public abstract void output();
}

class Monitor extends Output{
  public void output(){
    System.out.println("[ " + string + " ] とモニタに出力しました");
  }
}

class Printer extends Output {
  public void output() {
    System.out.println("[ " + string + " ] とプリンタで印刷しました");
  }
}

class HardDisk extends Output {
  public void output(){
    System.out.println("[ " + string + " ] とハードディスクに書き出しました");
  }
}