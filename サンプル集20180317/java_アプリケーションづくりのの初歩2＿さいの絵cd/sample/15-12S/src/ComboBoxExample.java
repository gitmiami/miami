import java.awt.event.*;
import javax.swing.*;
import java.awt.*;

public class ComboBoxExample extends JFrame implements ActionListener {
	
	public static void main(String[] args) {
		new ComboBoxExample(); 
	}
	
	JComboBox comboBox = new JComboBox();
	
	ComboBoxExample() {
		JButton button = new JButton("OK");
		button.addActionListener(this);
		getContentPane().setLayout(new FlowLayout());
		comboBox.addItem("選択肢1");
		comboBox.addItem("選択肢2");
		comboBox.addItem("選択肢3");
		getContentPane().add(comboBox);		
		getContentPane().add(button);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(200, 80);
		setVisible(true);
	}

	public void actionPerformed(ActionEvent e) {
		System.out.println(comboBox.getSelectedItem() + "が選択されています");
	}
}
