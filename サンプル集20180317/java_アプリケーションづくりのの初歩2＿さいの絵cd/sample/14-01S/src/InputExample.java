import java.io.*;

public class InputExample {
	public static void main(String[] args) {
		System.out.println("���Ȃ��̂����O�́H");
		InputStreamReader in = new InputStreamReader(System.in);
		BufferedReader reader = new BufferedReader(in);				try {
			String name = reader.readLine();
			System.out.println("����ɂ��́B" + name + "����");
		} catch(IOException e) {
			System.out.println(e);
		}
	}
}
