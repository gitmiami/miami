class MyThread extends Thread {
	public void run() {
		for(int i = 0; i < 100; i++) {
			System.out.println("MyThread��run���\�b�h(" + i + ")");
		}
	}
}

public class SimpleThreadTest3 {
	public static void main(String[] args) {
		MyThread t = new MyThread();
		t.start();

		try{
			t.join();
		} catch (InterruptedException e) {
			System.out.println(e);
		}
		
		for(int i = 0; i < 100; i++) {
			System.out.println("SimpleThreadTest3�N���X��main���\�b�h(" + i + ")");		
		}
	}
}
