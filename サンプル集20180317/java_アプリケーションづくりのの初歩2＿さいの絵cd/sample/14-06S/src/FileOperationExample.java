import java.io.*;

public class FileOperationExample {
	public static void main(String[] args) {
		File file = new File("C:\\java\\test.txt");
		if(!file.exists()) {
			System.out.println(file + "������܂���");
			return;
		}
		
		if(file.delete()) {
			System.out.println(file + "���폜���܂���");
		} else {
			System.out.println(file + "���폜�ł��܂���ł���");	
		}
	}
}
