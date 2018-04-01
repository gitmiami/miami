package board;

import beanYama.*;
import java.io.*;
import java.sql.*;
import java.text.*;
import java.util.*;

public class brd_bean implements Serializable {
	private ArrayList result;
	private class UsrInfo {
		public String uid;
		public String unam;
		public int present;
		public String plac;
		public String rTime;
		public String memo;
		public java.util.Date uTime_d;
		public java.util.Date uTime_t;
	}
	public String getUserName(String uid) {
		String strUnam=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM brd_usr WHERE uid='" + uid + "'");
			if(rs.next()){
				strUnam=rs.getString("unam");
			} else {
				strUnam="";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return strUnam;
	}
	public void getCurrentStatus() {
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM brd_usr ORDER BY uid");
			result=new ArrayList();
			while(rs.next()){
				UsrInfo objUsr=new UsrInfo();
				objUsr.uid    =rs.getString("uid");
				objUsr.unam   =rs.getString("unam");
				objUsr.present=rs.getInt("present");
				objUsr.plac   =rs.getString("plac");
				objUsr.rTime  =rs.getString("rTime");
				objUsr.memo   =rs.getString("memo");
				objUsr.uTime_d=rs.getDate("uTime");
				objUsr.uTime_t=rs.getTime("uTime");
				result.add(objUsr);
			}
			objSql.close();
			db.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public boolean isMsg(String id){
		boolean flag=false;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM brd_msg WHERE uid='" + id + "'");
			if(rs.next()){flag=true;}
			objSql.close();
			db.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	public int getResultCount(){
		return result.size();
	}
	public String getUid(int index){
		UsrInfo objUsr=(UsrInfo)result.get(index);
		return objUsr.uid;
	}
	public String getUnam(int index){
		UsrInfo objUsr=(UsrInfo)result.get(index);
		return objUsr.unam;
	}
	public int getPresent(int index){
		UsrInfo objUsr=(UsrInfo)result.get(index);
		return objUsr.present;
	}
	public String getPlac(int index){
		UsrInfo objUsr=(UsrInfo)result.get(index);
		return objUsr.plac;
	}
	public String getRTime(int index){
		UsrInfo objUsr=(UsrInfo)result.get(index);
		return objUsr.rTime;
	}
	public String getMemo(int index){
		UsrInfo objUsr=(UsrInfo)result.get(index);
		return objUsr.memo;
	}
	public String getUTime(int index){
		UsrInfo objUsr=(UsrInfo)result.get(index);
		return EncodeUtil.formatDate("yyyyÇ¯MM·îddÆü",objUsr.uTime_d) + EncodeUtil.formatDate(" HH:mm:ss",objUsr.uTime_t);
	}
}
