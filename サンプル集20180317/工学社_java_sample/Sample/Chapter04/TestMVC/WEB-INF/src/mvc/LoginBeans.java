package mvc;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Serializable;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class LoginBeans implements Serializable{

	private String username;
	private String userpass;

	public LoginBeans(){
	}

	public void registerUser(){
		try {
			FileWriter fno = new FileWriter(username + ".txt");
			fno.write(userpass);
			fno.close();
		}catch (IOException e) {
		}
	}

	public boolean isCorrectPass(){
		try{
			FileReader reader = new FileReader(username + ".txt");
			BufferedReader br = new BufferedReader(reader);
			String pass = br.readLine();

			if(userpass.equals(pass)){
				br.close();
				reader.close();
				return true;
			}else{
				br.close();
				reader.close();
				return false;
			}
		}catch(IOException e){
			return false;
		}
	}

	public String getUsername(){
		return username;
	}

	public void setUsername(String userNameFrmCon){
		this.username = userNameFrmCon;
	}

	public String getUserpass(){
		return userpass;
	}

	public void setUserpass(String userPassFrmCon){
		this.userpass = userPassFrmCon;
	}
}
