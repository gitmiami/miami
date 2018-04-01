import javax.swing.*;

class MyFrame extends JFrame {
	MyFrame() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(300, 200);
		setVisible(true);
	}
}

public class SimpleFrameExample2 {
	public static void main(String[] args) {
		new MyFrame();
	}
}
