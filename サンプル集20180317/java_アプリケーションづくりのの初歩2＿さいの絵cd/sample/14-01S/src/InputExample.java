import java.io.*;

public class InputExample {
	public static void main(String[] args) {
		System.out.println("‚ ‚È‚½‚Ì‚¨–¼‘O‚ÍH");
		InputStreamReader in = new InputStreamReader(System.in);
		BufferedReader reader = new BufferedReader(in);				try {
			String name = reader.readLine();
			System.out.println("‚±‚ñ‚É‚¿‚ÍB" + name + "‚³‚ñ");
		} catch(IOException e) {
			System.out.println(e);
		}
	}
}
