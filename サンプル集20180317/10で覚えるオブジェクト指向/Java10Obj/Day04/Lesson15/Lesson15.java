import java.io.*;

class Output {
  protected String string;

  void setString(String string){
    this.string = string;
  }
  void output(){
    System.out.println("[ " + string + " ] と出力しました");
  }
}


class Monitor extends Output{
  void output(){
    System.out.println("[ " + string + " ] とモニタに出力しました");
  }
}


class Printer extends Output {
  void output() {
    System.out.println("[ " + string + " ] とプリンタで印刷しました");
  }
}


class HardDisk extends Output {
  void output(){
    System.out.println("[ " + string + " ] とハードディスクに書き出しました");
  }
}

class Test {
  public static void main(String[] args) {
    Output[] output = {new Monitor(), new Printer(), new HardDisk() };

    while(true) {
      try {
        System.out.println("■処理を選択してください■");
        System.out.println("0：画面に出力　1：プリンタに出力　2：ファイルに出力　3：終了");
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int num = Integer.parseInt(br.readLine());
        if (num >= 3) System.exit(0);

        System.out.println("■出力する文字列を指定してください■");
        br = new BufferedReader(new InputStreamReader(System.in));

        output[num].setString(br.readLine());

        System.out.println("-------------------------------------------");
        output[num].output();
        System.out.println("-------------------------------------------\n");

      }catch(IOException ie) {
        ie.printStackTrace();
      }
    }
  }
}



