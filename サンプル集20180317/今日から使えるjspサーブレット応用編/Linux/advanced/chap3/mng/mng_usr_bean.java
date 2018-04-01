package mng;

import java.io.*;
import java.sql.*;
import java.util.*;

public class mng_usr_bean implements Serializable {
	public ResultSet getUsrInfo(){
		ResultSet rs=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try{
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			rs=objSql.executeQuery("SELECT * FROM mng_usr");
		} catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	public void setUsrInfo(String uid,String passwd,String unam,String depart,String admin,String spr,String user){
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			int intAdmin=(admin==null) ? 0 : Integer.parseInt(admin);
			int intSuper=(spr==null)   ? 0 : Integer.parseInt(spr);
			int intUser =(user ==null) ? 0 : Integer.parseInt(user);
			int intPerms=intAdmin + intSuper + intUser;
			PreparedStatement objSql=db.prepareStatement("INSERT INTO mng_usr(uid,passwd,unam,depart,perms) VALUES(?,?,?,?,?)");
			objSql.setString(1,uid);
			objSql.setString(2,passwd);
			objSql.setString(3,unam);
			objSql.setString(4,depart);
			objSql.setInt(5,intPerms);
			objSql.executeUpdate();
			objSql.close();
			db.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	public void updateUsrInfo(String uid,String passwd,String unam,String depart,String admin,String spr,String user){
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			int intAdmin=(admin==null) ? 0 : Integer.parseInt(admin);
			int intSuper=(spr==null)   ? 0 : Integer.parseInt(spr);
			int intUser =(user ==null) ? 0 : Integer.parseInt(user);
			int intPerms=intAdmin + intSuper + intUser;
			PreparedStatement objSql=db.prepareStatement("UPDATE mng_usr SET passwd=?,unam=?,depart=?,perms=? WHERE uid=?");
			objSql.setString(1,passwd);
			objSql.setString(2,unam);
			objSql.setString(3,depart);
			objSql.setInt(4,intPerms);
			objSql.setString(5,uid);
			objSql.executeUpdate();
			objSql.close();
			db.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	public void removeUsrInfo(String uid){
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			PreparedStatement objSql=db.prepareStatement("DELETE FROM mng_usr WHERE uid=?");
			objSql.setString(1,uid);
			objSql.executeUpdate();
			objSql.close();
			db.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	public boolean isAdmin(int perms){
		if((perms & 4)==4){
			return true;
		}else{
			return false;
		}
	}
	public boolean isSuper(int perms){
		if((perms & 2)==2){
			return true;
		}else{
			return false;
		}
	}
	public boolean isUser(int perms){
		if((perms & 1)==1){
			return true;
		}else{
			return false;
		}
	}
}
