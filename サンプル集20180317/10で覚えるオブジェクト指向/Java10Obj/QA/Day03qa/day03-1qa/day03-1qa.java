import java.net.*;
class URLTest {
  public static void main(String[] args) {
    try {
      URL url = new URL(args[0]);
      System.out.println("URL�I�u�W�F�N�g���쐬����܂���");
    } catch(MalformedURLException fe) {
      System.out.println("��O���������܂���");
    }
  }
}