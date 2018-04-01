package presence;

import java.io.Serializable;
import java.sql.ResultSet;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class LoginBeans implements Serializable {

	DataBaseBeans db = new DataBaseBeans();
	
	private String name;
	private String userid;
	private String userpass;
	
	public LoginBeans() {
	}

	public String getPasswordFromDB() {
		String truePass = "";
		try{
			db.connect();
			String sql = 
			"SELECT NAME,PASS FROM USER " +
			"WHERE USERID='"+getUserId()+"'";
			ResultSet rs = db.executeQuery(sql);
			rs.next();
			setName(rs.getString("NAME"));
			truePass = rs.getString("PASS");
		}catch(Exception e){
		}finally{
			try{
				db.disConnect();
			}catch(Exception e){
			}
		}
		return truePass;
	}

	public boolean isCorrectPass() {
		String truePass = getPasswordFromDB();
		String comparPass = getUserPass();
		if (truePass.equals(comparPass)){
			return true;
		}else{
			return false;
		}
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserId() {
		return userid;
	}

	public void setUserId(String userid) {
		this.userid = userid;
	}

	public String getUserPass() {
		return userpass;
	}

	public void setUserPass(String userpass) {
		this.userpass = userpass;
	}
}