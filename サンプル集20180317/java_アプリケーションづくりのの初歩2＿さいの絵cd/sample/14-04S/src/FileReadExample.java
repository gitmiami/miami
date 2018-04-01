import java.io.*;

public class FileReadExample {
	public static void main(String[] args) {
		try {
			File file = new File("C:\\java\\test.txt");
			FileReader fr = new FileReader(file);
			BufferedReader br = new BufferedReader(fr);
			String s;
			while((s = br.readLine()) != null) {
				System.out.println(s + "Çì«Ç›çûÇ›Ç‹ÇµÇΩ");
			}
			br.close();
		} catch (IOException e) {
			System.out.println(e);
		}
	}
}
