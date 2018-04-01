import java.awt.event.*;
import javax.swing.*;
import java.awt.*;

public class ScrollBarExample extends JFrame implements AdjustmentListener {
	
	public static void main(String[] args) {
		new ScrollBarExample(); 
	}
		
	JScrollBar scrollBar = new JScrollBar(JScrollBar.HORIZONTAL, 50, 5, 0, 105);
	JLabel label = new JLabel("50", JLabel.CENTER);
	
	ScrollBarExample() {	
		scrollBar.addAdjustmentListener(this);
		getContentPane().add(BorderLayout.NORTH, scrollBar);
		getContentPane().add(BorderLayout.CENTER, label);		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(200, 80);
		setVisible(true);
	}

	public void adjustmentValueChanged(AdjustmentEvent e) {
		JScrollBar sb = (JScrollBar)e.getSource();
		label.setText("" + sb.getValue());
	}
}
