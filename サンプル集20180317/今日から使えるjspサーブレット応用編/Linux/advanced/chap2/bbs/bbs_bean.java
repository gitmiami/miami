package bbs;

import beanYama.*;
import java.io.*;
import java.sql.*;
import java.text.*;
import java.util.*;
import java.util.regex.*;

public class bbs_bean implements Serializable {
	private Article result;
	private class Article {
		public String id;
		public String title;
		public String nam;
		public java.util.Date sdat1;
		public java.util.Date sdat2;
		public String article;
		public int parent;
		public int level;
	}
	public ResultSet getRootThread(int cnt){
		ResultSet rs=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			rs=objSql.executeQuery("SELECT * FROM bbs_master WHERE parent=0 ORDER BY sdat DESC LIMIT " + cnt + ",5");
		} catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet getChildThread(int id){
		ResultSet rs=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			rs=objSql.executeQuery("SELECT * FROM bbs_master WHERE parent=" + id + " ORDER BY sdat ASC");
		} catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet search(String keywd){
		ResultSet rs=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			rs=objSql.executeQuery("SELECT id FROM bbs_master WHERE (title Like '%" + keywd + "%' OR article Like '%" + keywd + "%') AND title <> 'ºï½üºÑ¤ß' ORDER BY id DESC");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	public void setArticle(String title,String nam,String article,String passwd,String parent,String level){
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			article=EncodeUtil.htmlEncode(article);
			Pattern ptn=Pattern.compile(System.getProperty("line.separator"),Pattern.CASE_INSENSITIVE);
			Matcher mtch=ptn.matcher(article);
			article=mtch.replaceAll("<br />");
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			objSql.executeUpdate("INSERT INTO bbs_master(title,nam,sdat,article,passwd,parent,level) VALUES('" + title + "','" + nam + "','" + EncodeUtil.formatDate("yyyy-MM-dd HH:mm:ss") + "','" + article + "','" + passwd + "'," + parent + "," + level + ")");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public boolean removeArticle(String id, String passwd){
		boolean flag=true;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM bbs_master WHERE id=" + id + " AND passwd='" + passwd + "'");
			if(rs.next()){
				objSql.executeUpdate("UPDATE bbs_master SET title='ºï½üºÑ¤ß' WHERE id=" + id);
			}else{
				flag=false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	public void getArticle(String id){
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM bbs_master WHERE id=" + id);
			result=new Article();
			if(rs.next()){
				result.id     =rs.getString("id");
				result.title  =rs.getString("title");
				result.nam    =rs.getString("nam");
				result.sdat1  =rs.getDate("sdat");
				result.sdat2  =rs.getTime("sdat");
				result.article=rs.getString("article");
				result.level  =rs.getInt("level");
				result.parent =rs.getInt("parent");
			}else{
				result.id     ="";  result.title  ="";  result.nam    ="";
				result.sdat1  =null;result.sdat2  =null;result.article="";
				result.level  =0   ;result.parent =0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public String getId()    {return result.id;}
	public String getTitle() {return result.title;}
	public String getNam()   {return result.nam;}
	public int    getLevel() {return result.level;}
	public int    getParent(){return result.parent;}
	public String getSdat()  {
		return EncodeUtil.formatDate("yyyyÇ¯MM·îddÆü",result.sdat1) + EncodeUtil.formatDate(" HH»þmmÊ¬ssÉÃ",result.sdat2);
	}
	public String getBody(boolean flag){
		String strRst=result.article;
		if(flag){
			strRst="> " + strRst.replaceAll("<br />",System.getProperty("line.separator") + "> ");
		}else{
			Pattern ptn=Pattern.compile("(http://|https://){1}[\\w\\.\\-/:]+",Pattern.CASE_INSENSITIVE);
			Matcher objMch=ptn.matcher(result.article);
			strRst=objMch.replaceAll("<a href='$0'>$0</a>");
		}
		return strRst;
	}
}
