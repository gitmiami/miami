import java.io.*;

public class FolderOperationExample {
	public static void main(String[] args) {
		File dir1 = new File("testA");
		File dir2 = new File("testA\\testB\\testC");
		
		if(dir1.mkdir()) {
			System.out.println(dir1 + "‚ğì¬‚µ‚Ü‚µ‚½");
		} else {
			System.out.println(dir1 + "‚Ìì¬‚É¸”s‚µ‚Ü‚µ‚½");
		}

		if(dir2.mkdirs()) {
			System.out.println(dir2 + "‚ğì¬‚µ‚Ü‚µ‚½");
		} else {
			System.out.println(dir2 + "‚Ìì¬‚É¸”s‚µ‚Ü‚µ‚½");
		}
		
		String[] fileList = dir1.list();
		for(String s : fileList) {
			System.out.println(s);
		}
	}
}
