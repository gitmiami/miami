import java.net.*;
import java.io.*;
class FileOperation {
  static void createFile(String fileName) {
    File file = new File(fileName);
    try {
      file.createNewFile();
    } catch (IOException ie) {
      ie.printStackTrace();
    }
  }
}
