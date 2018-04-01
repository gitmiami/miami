package web_album;

import java.io.Serializable;
import java.sql.ResultSet;

/**
 * @author ŠÖ¼‘åŠw‘‡î•ñŠw•”@“c’†Œ¤‹†º
 */
public class LoginBeans implements Serializable{
	
	private String userName;
	private String userPass;
	private String newUserName;
	private String newUserPass;
	private String msg;
	
	public LoginBeans(){
	}

	DataBaseBeans db = new DataBaseBeans();
	
	public void register(){
		
		if( getNewUserName().equals("") || getNewUserPass().equals("") ){
			setMsg("“ü—Í€–Ú‚ª‘«‚è‚Ü‚¹‚ñ<br><br><a href=\"/WebAlbum/RegistryForm.jsp\">V‹K“o˜^‰æ–Ê</a>");
			
		}else if( !getNewUserName().equals("") && !getNewUserPass().equals("")){
			try{
 				db.connect();
 				String sql = "insert into user (id,passwd) values ('"+ getNewUserName() +"','"+ getNewUserPass() +"')";
 				db.executeUpdate(sql);	
 				setMsg("ƒ†[ƒU“o˜^‚ªŠ®—¹‚µ‚Ü‚µ‚½<br><br><a href=\"/WebAlbum/Login.jsp\">ƒƒOƒCƒ“‰æ–Ê</a>");
			}catch(Exception e){
			}finally{
 				try{
 					db.disConnect();				
 				}catch(Exception e){
 				}
			}
		}
	}
	
	public void login(){
		boolean flag = false;
		
		if( getUserName().equals("") || getUserPass().equals("") ){
			setMsg("“ü—Í€–Ú‚ª‘«‚è‚Ü‚¹‚ñ<br><br><a href=\"/WebAlbum/Login.jsp\">ƒƒOƒCƒ“‰æ–Ê</a>");
			
		}else if( !getUserName().equals("") && !getUserPass().equals("") ){
			try{
				DataBaseBeans db = new DataBaseBeans();
				db.connect();
				String sql = "select * from user where id = '"+getUserName()+"' and passwd = '"+getUserPass()+" '";
				ResultSet rs = db.executeQuery(sql);

				while( rs.next() ){	
					String d_id = rs.getString("id");
					String d_passwd = rs.getString("passwd");
				
					if( getUserName().equals(d_id) && getUserPass().equals(d_passwd) ){
						setMsg("ƒƒOƒCƒ“¬Œ÷");
						flag = true;
					}
				}

				if(flag==false){	
					setMsg("ƒ†[ƒU“o˜^‚ğ‚µ‚Ä‰º‚³‚¢<br><br><a href=\"/WebAlbum/RegistryForm.jsp\">V‹K“o˜^‰æ–Ê</a>");
				}	
			}catch(Exception e){
			}finally{
				try{
					db.disConnect();
				}catch(Exception e){
				}
			}
		}
	}
		
	public String getUserName(){
		return userName;
	}
		
	public void setUserName(String userName){
		this.userName = userName;
	}
		
	public String getUserPass(){
		return userPass;
	}
	
	public void setUserPass(String userPass){
		this.userPass = userPass;
	}
		
	public String getNewUserName(){
		return newUserName;
	}
	
	public void setNewUserName(String newUserName){
		this.newUserName = newUserName;
	}
		
	public String getNewUserPass(){
		return newUserPass;
	}
		
	public void setNewUserPass(String newUserPass){
		this.newUserPass = newUserPass;
	}
		
	public String getMsg(){
		return msg;
	}
		
	public void setMsg(String msg){
		this.msg = msg;
	}
}