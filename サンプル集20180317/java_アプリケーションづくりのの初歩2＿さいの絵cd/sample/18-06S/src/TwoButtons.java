import java.awt.*;
import javax.swing.*;
import java.awt.event.*;

public class TwoButtons extends JFrame {
	public static void main(String[] args) {
		new TwoButtons();
	}

	private JButton minusButton;
	private JButton plusButton;
	private JLabel  label;
	private int counter = 50;
	
	TwoButtons() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		label = new JLabel("" + counter, SwingConstants.CENTER);
		getContentPane().add(label);
		
		minusButton = new JButton("-");
		minusButton.addActionListener(new ActionListenerMinus());
		getContentPane().add(BorderLayout.WEST, minusButton);

		plusButton = new JButton("+");		
		plusButton.addActionListener(new ActionListenerPlus());
		getContentPane().add(BorderLayout.EAST, plusButton);

		setSize(200, 100);
		setVisible(true);
	}
	
	class ActionListenerPlus implements ActionListener {
		public void actionPerformed(ActionEvent ae) {
			counter++;
			label.setText("" + counter);
		}		
	}
	
	class ActionListenerMinus implements ActionListener {
		public void actionPerformed(ActionEvent ae) {
			counter--;
			label.setText("" + counter);
		}
	}
}
