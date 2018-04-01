import java.awt.event.*;
import javax.swing.*;

public class MenuExample extends JFrame implements ActionListener {
	
	public static void main(String[] args) {
		new MenuExample(); 
	}
	
	JMenuBar menuBar = new JMenuBar();
	JMenu menuFile = new JMenu("�t�@�C��");
	JMenuItem menuOpen = new JMenuItem("�J��");
	JMenuItem menuExit = new JMenuItem("�I��");
	
	MenuExample() {
		menuFile.add(menuOpen);
		menuFile.add(menuExit);
		menuBar.add(menuFile);
		setJMenuBar(menuBar);
		menuOpen.addActionListener(this);
		menuExit.addActionListener(this);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(150, 100);
		setVisible(true);
	}

	public void actionPerformed(ActionEvent e) {
		if(e.getSource() == menuOpen) {
			System.out.println("[�J��]���I������܂���");
		} else if(e.getSource() == menuExit) {
			System.exit(0);
		}
	}
}
