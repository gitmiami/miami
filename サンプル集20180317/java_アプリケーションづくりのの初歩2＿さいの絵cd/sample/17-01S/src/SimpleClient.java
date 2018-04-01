import java.io.*;
import java.net.*;

public class SimpleClient {
	public static void main(String[] args) {
		try {
			Socket socket = new Socket("127.0.0.1", 5000);
			BufferedReader reader = new BufferedReader(
				new InputStreamReader(socket.getInputStream()));
			String message = reader.readLine();
			System.out.println("ƒT[ƒo‚©‚çó‚¯æ‚Á‚½•¶š—ñ:" + message);
			reader.close();
		} catch(IOException e) {
			System.out.println(e);	
		}
	}
}
