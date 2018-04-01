import java.io.*;
import java.net.*;

public class SimpleServer {
	public static void main(String[] args) {
		try {
			ServerSocket serverSocket = new ServerSocket(5000);
			while(true) {
				Socket socket = serverSocket.accept();
				PrintWriter writer =
					 new PrintWriter(socket.getOutputStream());
				writer.println("����ɂ��́B���̓T�[�o�ł��B");
				writer.close();
			}
		} catch(IOException e) {
			System.out.println(e);
		}
	}
}
