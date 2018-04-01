package sche;

import beanYama.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.text.*;
import javax.mail.internet.*;

public class sche_bean implements Serializable {
	public String[] authenticate(String strAth){
		String[] strResult={null,null};
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			if(strAth !=null && strAth.substring(0,6).equals("Basic ")){
				String strAth2=MimeUtility.decodeText("=?iso-8859-1?B?" + strAth.substring(6) + "?=");
				String id    =strAth2.substring(0,strAth2.indexOf(":"));
				String passwd=strAth2.substring(strAth2.indexOf(":")+1);
				Class.forName(objRB.getString("jdbcDriver"));
				Connection db=DriverManager.getConnection(objRB.getString("conStr"));
				Statement objSql=db.createStatement();
				ResultSet rs=objSql.executeQuery("SELECT * FROM sche_usr WHERE id='" + id + "' AND passwd='" + passwd + "'");
				if(rs.next()){
					strResult[0]=rs.getString("id");
					strResult[1]=rs.getString("nam");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return strResult;
	}
	public ResultSet getTodayCategory(String id, Calendar today){
		ResultSet rs=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			rs=objSql.executeQuery("SELECT sche_category.nam,sche_category.pic FROM sche_category INNER JOIN sche_master ON sche_category.id = sche_master.cate WHERE sche_master.id='" + id + "' AND sche_master.pDat='" + EncodeUtil.formatDate("yyyy-MM-dd",today.getTime()) + "' GROUP BY sche_category.nam");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet getSchedule(String id, String dat) {
		ResultSet rs=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			rs=objSql.executeQuery("SELECT sche_master.pid, sche_master.id, sche_master.pDat, sche_master.bTim, sche_master.eTim, sche_master.pNam, sche_category.nam, sche_master.memo FROM sche_master INNER JOIN sche_category ON sche_master.cate = sche_category.id WHERE sche_master.id='" + id + "' AND sche_master.pDat='" + dat + "' ORDER BY sche_master.bTim ASC");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	public void setSchedule(String id,String pDat,String bTim,String eTim,String pNam,String cate,String memo){
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			objSql.executeUpdate("INSERT INTO sche_master(id,pDat,bTim,eTim,pNam,cate,memo) VALUES('" + id + "','" + pDat + "','" + bTim + "','" + eTim + "','" + pNam + "','" + cate + "','" + memo + "')");
		}catch (Exception e){
			e.printStackTrace();
		}
	}
	public void removeSchedule(String pid){
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			objSql.executeUpdate("DELETE FROM sche_master WHERE pid=" + pid);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public ResultSet search(String dat, String bTim, String eTim){
		ResultSet rs=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			rs=objSql.executeQuery("SELECT sche_category.nam AS cate_name, sche_usr.nam AS usr_name, sche_master.pid, sche_master.pDat, sche_master.bTim, sche_master.eTim, sche_master.pNam, sche_master.cate FROM (sche_category INNER JOIN sche_master ON sche_category.id = sche_master.cate) INNER JOIN sche_usr ON sche_master.id = sche_usr.id WHERE ((bTim>='" + bTim + "' AND bTim<='" + eTim + "') OR (eTim>='" + bTim + "' AND eTim<='" + eTim + "') OR (bTim<='" + bTim + "' AND eTim>='" + eTim + "')) AND (pDat='" + dat + "')");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
}
