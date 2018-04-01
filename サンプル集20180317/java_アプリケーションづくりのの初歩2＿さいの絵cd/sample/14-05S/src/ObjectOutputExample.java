import java.io.*;

public class ObjectOutputExample {
	public static void main(String[] args) {
		Triangle tri = new Triangle();
		tri.p0 = new Point(0, 0);
		tri.p1 = new Point(10, 0);
		tri.p2 = new Point(5, 10);
		
		try {
			FileOutputStream fs = new FileOutputStream("C:\\java\\triangle.ser");
			ObjectOutputStream os = new ObjectOutputStream(fs);
			os.writeObject(tri);
			os.close();
		} catch(IOException e) {
			System.out.println(e);
		}
	}
}
