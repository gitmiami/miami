import java.io.*;

public class FolderOperationExample {
	public static void main(String[] args) {
		File dir1 = new File("testA");
		File dir2 = new File("testA\\testB\\testC");
		
		if(dir1.mkdir()) {
			System.out.println(dir1 + "���쐬���܂���");
		} else {
			System.out.println(dir1 + "�̍쐬�Ɏ��s���܂���");
		}

		if(dir2.mkdirs()) {
			System.out.println(dir2 + "���쐬���܂���");
		} else {
			System.out.println(dir2 + "�̍쐬�Ɏ��s���܂���");
		}
		
		String[] fileList = dir1.list();
		for(String s : fileList) {
			System.out.println(s);
		}
	}
}
