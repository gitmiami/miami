import java.io.*;

public class InputExample2 {
	public static void main(String[] args) {
		InputStreamReader in = new InputStreamReader(System.in);
		BufferedReader reader = new BufferedReader(in);
		try {
			String line = reader.readLine();
			double val = Double.parseDouble(line);
			System.out.println("“ü—Í‚³‚ê‚½’l‚Ì•½•ûª‚Í" + Math.sqrt(val));
		} catch(IOException e) {
			System.out.println(e);
		}
	}
}
