import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.net.*;
import javax.swing.*;

public class WeatherForecastClient extends JFrame implements ActionListener {
	public static void main(String[] args) {
		new WeatherForecastClient();
	}
	
	JTextArea textArea = new JTextArea(5, 20);
	JButton button = new JButton("予報を取得する");

	WeatherForecastClient() {
		setTitle("天気予報受信クライアント");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		JScrollPane scrollPane = new JScrollPane(textArea);
		getContentPane().add(scrollPane);
		getContentPane().add(BorderLayout.SOUTH, button);
		button.addActionListener(this);
		
		setSize(300, 200);
		setVisible(true);
	}
	
	public void actionPerformed(ActionEvent ae) {
		try {
			Socket socket = new Socket("127.0.0.1", 5000);
			BufferedReader reader = new BufferedReader(
				new InputStreamReader(socket.getInputStream()));
			String weather = reader.readLine();
			
			textArea.append("サーバから受け取った予報 ["+weather+"]\r\n");
			reader.close();
		} catch(IOException e) {
			System.out.println(e);
		}
	}
}
