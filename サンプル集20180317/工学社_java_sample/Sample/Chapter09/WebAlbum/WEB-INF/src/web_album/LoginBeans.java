package web_album;

import java.io.Serializable;
import java.sql.ResultSet;

/**
 * @author �֐���w�������w���@�c��������
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
			setMsg("���͍��ڂ�����܂���<br><br><a href=\"/WebAlbum/RegistryForm.jsp\">�V�K�o�^���</a>");
			
		}else if( !getNewUserName().equals("") && !getNewUserPass().equals("")){
			try{
 				db.connect();
 				String sql = "insert into user (id,passwd) values ('"+ getNewUserName() +"','"+ getNewUserPass() +"')";
 				db.executeUpdate(sql);	
 				setMsg("���[�U�o�^���������܂���<br><br><a href=\"/WebAlbum/Login.jsp\">���O�C�����</a>");
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
			setMsg("���͍��ڂ�����܂���<br><br><a href=\"/WebAlbum/Login.jsp\">���O�C�����</a>");
			
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
						setMsg("���O�C������");
						flag = true;
					}
				}

				if(flag==false){	
					setMsg("���[�U�o�^�����ĉ�����<br><br><a href=\"/WebAlbum/RegistryForm.jsp\">�V�K�o�^���</a>");
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