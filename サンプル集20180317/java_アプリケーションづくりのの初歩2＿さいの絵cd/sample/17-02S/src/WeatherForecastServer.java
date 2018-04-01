import java.io.*;
import java.net.*;
import javax.swing.*;

public class WeatherForecastServer extends JFrame {
	public static void main(String[] args) {
		new WeatherForecastServer();
	}
	
	JTextArea textArea = new JTextArea(5, 20);
	String[] weathers = {"°‚ê", "“Ü‚è", "‰J", "°‚ê‚Ì‚¿“Ü‚è", 
							"°‚ê‚Ì‚¿‰J", "“Ü‚è‚Ì‚¿°‚ê"};
	WeatherForecastServer() {
		setTitle("“V‹C—\•ñ‘—MƒT[ƒo");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		JScrollPane scrollPane = new JScrollPane(textArea);
		getContentPane().add(scrollPane);
		
		setSize(300, 200);
		setVisible(true);
		
		try {
			ServerSocket serverSocket = new ServerSocket(5000);
			while(true) {
				Socket socket = serverSocket.accept();
				PrintWriter writer = new PrintWriter(
					socket.getOutputStream());
				
				String weather = getWeatherForecast();
				writer.println(weather);
				writer.close();
				textArea.append("[" + weather + "] ‚Ì—\•ñ‚ğ‘—‚è‚Ü‚µ‚½\r\n");
			}
		} catch(IOException e) {
			System.out.println(e);
		}
	}
	
	String getWeatherForecast() {
		return weathers[(int)(Math.random() * weathers.length)];
	}
}
