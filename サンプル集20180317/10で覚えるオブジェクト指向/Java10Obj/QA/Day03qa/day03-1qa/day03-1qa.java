import java.net.*;
class URLTest {
  public static void main(String[] args) {
    try {
      URL url = new URL(args[0]);
      System.out.println("URLオブジェクトが作成されました");
    } catch(MalformedURLException fe) {
      System.out.println("例外が発生しました");
    }
  }
}