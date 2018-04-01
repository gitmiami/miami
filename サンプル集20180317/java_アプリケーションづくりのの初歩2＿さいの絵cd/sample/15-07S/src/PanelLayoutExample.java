import java.awt.*;
import javax.swing.*;

public class PanelLayoutExample extends JFrame {
	public static void main(String[] args) {
		new PanelLayoutExample();
	}
	
	PanelLayoutExample() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		getContentPane().setLayout(new GridLayout(2, 2));
		getContentPane().add(new JButton("1 January"));
		getContentPane().add(new JButton("2 February"));
		getContentPane().add(new JButton("3 March"));
		
		JPanel panel = new JPanel();
		panel.setLayout(new GridLayout(2, 2));		
		panel.add(new JButton("4 April"));
		panel.add(new JButton("5 May"));
		panel.add(new JButton("6 June"));
		
		getContentPane().add(panel);
		
		setSize(300, 200);
		setVisible(true);
	}
}
