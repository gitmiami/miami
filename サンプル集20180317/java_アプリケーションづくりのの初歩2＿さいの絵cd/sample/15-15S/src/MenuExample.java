import java.awt.event.*;
import javax.swing.*;

public class MenuExample extends JFrame implements ActionListener {
	
	public static void main(String[] args) {
		new MenuExample(); 
	}
	
	JMenuBar menuBar = new JMenuBar();
	JMenu menuFile = new JMenu("ファイル");
	JMenuItem menuOpen = new JMenuItem("開く");
	JMenuItem menuExit = new JMenuItem("終了");
	
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
			System.out.println("[開く]が選択されました");
		} else if(e.getSource() == menuExit) {
			System.exit(0);
		}
	}
}
