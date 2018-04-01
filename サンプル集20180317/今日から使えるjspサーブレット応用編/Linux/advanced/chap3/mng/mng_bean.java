package mng;

import beanYama.*;
import java.io.*;
import java.sql.*;
import java.util.*;

public class mng_bean implements Serializable {
	private ArrayList result;
	private pMng result_desc;
	private class Mng {
		public String id;
		public String nam;
		public String fnum;
		public String depart;
		public String plac;
		public String dat;
		public String mem;
	}
	private class pMng {
		public String id;
		public String ip;
		public String pnum;
		public String memory;
		public String hdd;
		public String mem;
	}
	public void setInfo(String id,String nam,String fnum,String depart,String plac,String dat,String mem){
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			PreparedStatement objSql=db.prepareStatement("INSERT INTO mng_master(id,nam,fnum,depart,plac,dat,mem) VALUES(?,?,?,?,?,?,?)");
			objSql.setString(1,id);
			objSql.setString(2,nam);
			objSql.setString(3,fnum);
			objSql.setString(4,depart);
			objSql.setString(5,plac);
			objSql.setString(6,dat);
			objSql.setString(7,mem);
			objSql.executeUpdate();
			objSql.close();
			db.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateInfo(String id,String depart,String plac,String dat,String mem){
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			PreparedStatement objSql=db.prepareStatement("UPDATE mng_master SET depart=?,plac=?,dat=?,mem=? WHERE id=?");
			objSql.setString(1,depart);
			objSql.setString(2,plac);
			objSql.setString(3,dat);
			objSql.setString(4,mem);
			objSql.setString(5,id);
			objSql.executeUpdate();
			objSql.close();
			db.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void removeInfo(String id,String depart,String mem){
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			PreparedStatement objSql1=db.prepareStatement("DELETE FROM mng_master WHERE id=?");
			objSql1.setString(1,id);
			objSql1.executeUpdate();
			objSql1.close();
			PreparedStatement objSql2=db.prepareStatement("INSERT INTO mng_del(id,depart,hdate,mem) VALUES(?,?,?,?)");
			objSql2.setString(1,id);
			objSql2.setString(2,depart);
			objSql2.setString(3,EncodeUtil.formatDate("yyyy-MM-dd"));
			objSql2.setString(4,mem);
			objSql2.executeUpdate();
			objSql2.close();
			db.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void getInfo(String sql) {
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try{
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery(sql);
			result=new ArrayList();
			while(rs.next()){
				Mng objMng=new Mng();
				objMng.id    =rs.getString("id");
				objMng.nam   =rs.getString("nam");
				objMng.fnum  =rs.getString("fnum");
				objMng.depart=rs.getString("depart");
				objMng.plac  =rs.getString("plac");
				objMng.dat   =rs.getString("dat");
				objMng.mem   =rs.getString("mem");
				result.add(objMng);
			}
			objSql.close();
			db.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	public ResultSet getInfo(int perms, String depart) {
		ResultSet rs=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try{
			String sql=null;
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			if((perms & 4) == 4){
				sql="SELECT * FROM mng_master";
			} else {
				sql="SELECT * FROM mng_master WHERE depart='" + depart + "'";
			}
			rs=objSql.executeQuery(sql);
		} catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	public void getInfoById(String id) {
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM mng_pmaster WHERE id='" + id + "'");
			result_desc=new pMng();
			if(rs.next()){
				result_desc.id    =rs.getString("id");
				result_desc.ip    =rs.getString("ip");
				result_desc.pnum  =rs.getString("pnum");
				result_desc.memory=rs.getString("memory");
				result_desc.hdd   =rs.getString("hdd");
				result_desc.mem   =rs.getString("mem");
			}else{
				result_desc.id    ="";
				result_desc.ip    ="";
				result_desc.pnum  ="";
				result_desc.memory="";
				result_desc.hdd   ="";
				result_desc.mem   ="";
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public int getResultCount(){
		return result.size();
	}
	public String getId(int index){
		Mng objMng=(Mng)result.get(index);
		return objMng.id;
	}
	public String getNam(int index){
		Mng objMng=(Mng)result.get(index);
		return objMng.nam;
	}
	public String getFnum(int index){
		Mng objMng=(Mng)result.get(index);
		return objMng.fnum;
	}
	public String getDepart(int index){
		Mng objMng=(Mng)result.get(index);
		return objMng.depart;
	}
	public String getPlac(int index){
		Mng objMng=(Mng)result.get(index);
		return objMng.plac;
	}
	public String getDat(int index){
		Mng objMng=(Mng)result.get(index);
		return objMng.dat;
	}
	public String getMem(int index){
		Mng objMng=(Mng)result.get(index);
		return objMng.mem;
	}
	public String getId()    {return result_desc.id;}
	public String getIp()    {return result_desc.ip;}
	public String getPnum()  {return result_desc.pnum;}
	public String getMemory(){return result_desc.memory;}
	public String getHdd()   {return result_desc.hdd;}
	public String getMem()   {return result_desc.mem;}
}
