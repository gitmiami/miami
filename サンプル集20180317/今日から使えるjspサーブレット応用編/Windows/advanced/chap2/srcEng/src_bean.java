package srcEng;

import beanYama.*;
import java.io.*;
import java.sql.*;
import java.text.*;
import java.util.*;

public class src_bean implements Serializable {
	public ResultSet getCategory (String parent) {
		ResultSet rs=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			rs=objSql.executeQuery("SELECT * FROM src_category WHERE parent=" + parent);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	public String getCategoryName (String cid) {
		String strNam=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT cname FROM src_category WHERE cid=" + cid);
			if(rs.next()){strNam=rs.getString("cname");}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return strNam;
	}
	public String getCategoryImage (String cid) {
		String strNam=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT img FROM src_category WHERE cid=" + cid);
			if(rs.next()){strNam=rs.getString("img");}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return strNam;
	}
	public ResultSet getSiteInfo(String cate){
		ResultSet rs=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			rs=objSql.executeQuery("SELECT * FROM src_master WHERE cid=" + cate);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet getSiteInfo(Object[] keywd, String strOpe, int intOrder){
		ResultSet rs=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			StringBuffer strSql=new StringBuffer();
			strSql.append("SELECT * FROM src_master WHERE (title Like '%" + keywd[0] + "%' OR descript Like '%" + keywd[0] + "%') ");
			for(int i=0;i<keywd.length;i++){
				strSql.append(" " + strOpe);
				strSql.append(" (title Like '%" + keywd[i] + "%' ");
				strSql.append("OR descript Like '%" + keywd[i] + "%') ");
			}
			if(intOrder==1){
				strSql.append("ORDER BY sDate DESC");
			}else{
				strSql.append("ORDER BY cnt DESC");
			}
			rs=objSql.executeQuery(strSql.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	public boolean setSiteInfo(String title, String url, String category, String descript){
		boolean flag=true;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM src_master WHERE url='" + url + "'");
			if(rs.next()){
				flag=false;
			}else{
				Statement objSql2=db.createStatement();
				objSql.executeQuery("INSERT INTO src_master(title,url,cid,sDate,cnt,descript) VALUES('" + title + "','" + url + "'," + category + ",'" + EncodeUtil.formatDate("yyyy-MM-dd") + "',0,'" + descript + "')");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	public String getCategoryString (String cate){
		boolean flag=true;
		String strCur=cate,strResult="";
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			while(flag){
				StringBuffer strTmp=new StringBuffer();
				ResultSet rs=objSql.executeQuery("SELECT * FROM src_category WHERE cid=" + strCur);
				if(rs.next()){
					strCur=rs.getString("parent");
					strTmp.append("„ <img src='/advanced/chap2/srcEng/img/");
					strTmp.append(rs.getString("img") + "' width='20' height='18' />");
					strTmp.append("<a href='index.jsp?cate=" + rs.getString("cid") + "'>");
					strTmp.append(rs.getString("cname") + "</a>&nbsp;");
					strResult=strTmp.toString()+strResult;
					if(strCur.equals("0")){flag=false;}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return strResult.substring(1);
	}
	public ResultSet getNewSite(String cid,int num){
		StringBuffer strRst=new StringBuffer();
		ResultSet rs=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			rs=objSql.executeQuery("SELECT * FROM src_category WHERE parent=" + cid);
			strRst.append(cid + ",");
			while(rs.next()){
				strRst.append(rs.getString("cid") + ",");
				strRst.append(this.getChildCategory(rs.getString("cid")));
			}
			rs=objSql.executeQuery("SELECT * FROM src_master WHERE cid IN (" + strRst.toString().substring(0,strRst.toString().length()-1) + ") ORDER BY sDate DESC LIMIT " + num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	private String getChildCategory(String cid) {
		StringBuffer strRst=new StringBuffer();
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM src_category WHERE parent=" + cid);
			while(rs.next()){
				strRst.append(rs.getString("cid") + ",");
				strRst.append(this.getChildCategory(rs.getString("cid")));
			}
			db.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return strRst.toString();
	}
}
