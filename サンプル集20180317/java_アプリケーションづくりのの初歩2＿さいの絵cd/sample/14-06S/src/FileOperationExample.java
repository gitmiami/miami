import java.io.*;

public class FileOperationExample {
	public static void main(String[] args) {
		File file = new File("C:\\java\\test.txt");
		if(!file.exists()) {
			System.out.println(file + "‚ª‚ ‚è‚Ü‚¹‚ñ");
			return;
		}
		
		if(file.delete()) {
			System.out.println(file + "‚ğíœ‚µ‚Ü‚µ‚½");
		} else {
			System.out.println(file + "‚ğíœ‚Å‚«‚Ü‚¹‚ñ‚Å‚µ‚½");	
		}
	}
}
