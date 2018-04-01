import java.awt.event.*;
import javax.swing.*;

class MyPanel extends JPanel 
	implements MouseListener, MouseMotionListener {
	
	public MyPanel() {
		addMouseListener(this);
		addMouseMotionListener(this);
	}
		
	public void mouseClicked(MouseEvent e) {
		System.out.println("マウスがクリックされました (" + e.getX() + ", " + e.getY() + ")");
	}

	public void mouseEntered(MouseEvent e) {
		System.out.println("マウスがパネル内に入りました");
	}

	public void mouseExited(MouseEvent e) {
		System.out.println("マウスがパネルの外に出ました");
	}

	public void mousePressed(MouseEvent e) {
		System.out.println("マウスのボタンが押されました");
	}

	public void mouseReleased(MouseEvent e) {
		System.out.println("マウスのボタンが離されました");
	}

	public void mouseDragged(MouseEvent e) {
		System.out.println("マウスがドラッグされました (" + e.getX() + ", " + e.getY() + ")");
	}

	public void mouseMoved(MouseEvent e) {
		System.out.println("マウスが移動しました (" + e.getX() + ", " + e.getY() + ")");
	}
}

public class MouseEventExample extends JFrame {
	public static void main(String[] args) {
		new MouseEventExample();
	}
	
	MouseEventExample() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		getContentPane().add(new MyPanel());
		setSize(300, 200);
		setVisible(true);
	}
}
