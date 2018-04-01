import java.awt.event.*;
import javax.swing.*;

class MyPanel extends JPanel 
	implements MouseListener, MouseMotionListener {
	
	public MyPanel() {
		addMouseListener(this);
		addMouseMotionListener(this);
	}
		
	public void mouseClicked(MouseEvent e) {
		System.out.println("�}�E�X���N���b�N����܂��� (" + e.getX() + ", " + e.getY() + ")");
	}

	public void mouseEntered(MouseEvent e) {
		System.out.println("�}�E�X���p�l�����ɓ���܂���");
	}

	public void mouseExited(MouseEvent e) {
		System.out.println("�}�E�X���p�l���̊O�ɏo�܂���");
	}

	public void mousePressed(MouseEvent e) {
		System.out.println("�}�E�X�̃{�^����������܂���");
	}

	public void mouseReleased(MouseEvent e) {
		System.out.println("�}�E�X�̃{�^����������܂���");
	}

	public void mouseDragged(MouseEvent e) {
		System.out.println("�}�E�X���h���b�O����܂��� (" + e.getX() + ", " + e.getY() + ")");
	}

	public void mouseMoved(MouseEvent e) {
		System.out.println("�}�E�X���ړ����܂��� (" + e.getX() + ", " + e.getY() + ")");
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
