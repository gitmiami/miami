import javax.swing.*;
import java.awt.*;
import java.awt.event.*;


class MyApplication extends JFrame implements ActionListener {
  private JButton btn = new JButton();
  private JLabel lbl = new JLabel("", JLabel.CENTER);
  
  MyApplication(String title) {
    super(title);
    this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE) ;
    this.btn.setText("Click here !");
    this.btn.addActionListener(this);
    this.lbl.setText("");
    this.getContentPane().add(btn, BorderLayout.NORTH);
    this.getContentPane().add(lbl, BorderLayout.CENTER);
  }
  
  public void actionPerformed(ActionEvent e) {
    this.lbl.setText("Hello World !");
  }

  public static void main(String[] args) {
    MyApplication ma = new MyApplication("Test Application");
    ma.setSize(300, 100);
    ma.setVisible(true);
  }
}
