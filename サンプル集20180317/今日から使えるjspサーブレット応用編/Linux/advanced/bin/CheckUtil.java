package beanYama;

import java.io.*;
import java.sql.*;
import java.util.*;
import java.text.*;
import java.util.regex.*;

public class CheckUtil implements Serializable {
	public static String requiredCheck(String strVal,String strErr) {
		if(strVal!=null && !strVal.equals("")){
			return "";
		}else{
			return strErr + "��ɬ�����ϤǤ�" + System.getProperty("line.separator");
		}
	}
	public static String lengthCheck(String strVal,int intMax,String strErr){
		if(strVal!=null && !strVal.equals("")){
			if(strVal.length()<=intMax){
				return "";
			}else{
				return strErr + "��" + intMax + "��ʲ������Ϥ��Ƥ�������" + System.getProperty("line.separator");
			}
		}else{
			return "";
		}
	}
	public static String ZenCheck(String strVal,String strErr){
		if(strVal!=null && !strVal.equals("")){
			try {
				if(strVal.getBytes("EUC-JP").length==strVal.length()*2){
					return "";
				}else{
					return strErr + "�����ѡ���Х���ʸ���ˤ����Ϥ��Ƥ�������" + System.getProperty("line.separator");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "";
		}else{
			return "";
		}
	}
	public static String HanCheck(String strVal,String strErr){
		if(strVal!=null && !strVal.equals("")){
			try {
				if(strVal.getBytes("EUC-JP").length==strVal.length()){
					return "";
				}else{
					return strErr + "��Ⱦ�ѡʰ�Х���ʸ���ˤ����Ϥ��Ƥ�������" + System.getProperty("line.separator");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "";
		}else{
			return "";
		}
	}
	public static String numberTypeCheck(String strVal,String strErr){
		if(strVal!=null && !strVal.equals("")){
			try {
				int intVal=Integer.parseInt(strVal);
			} catch (NumberFormatException e) {
				return strErr + "�Ͽ��ͤ����Ϥ��Ƥ�������" + System.getProperty("line.separator");
			}
			return "";
		}else{
			return "";
		}
	}
	public static String dateTypeCheck(String strVal,String strErr){
		if(strVal!=null && !strVal.equals("")){
			Pattern objPtn=Pattern.compile("^[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}$",Pattern.CASE_INSENSITIVE);
			Matcher objMth=objPtn.matcher(strVal);
			if(objMth.find()){
				StringTokenizer objTkn=new StringTokenizer(strVal,"-");
				int intYear =Integer.parseInt((String)objTkn.nextToken());
				int intMonth=Integer.parseInt((String)objTkn.nextToken());
				int intDay  =Integer.parseInt((String)objTkn.nextToken());
				Calendar objCal=Calendar.getInstance();
				objCal.set(intYear,intMonth-1,intDay);
				if(objCal.get(Calendar.YEAR)!=intYear || objCal.get(Calendar.MONTH)!=intMonth-1 || objCal.get(Calendar.DATE)!=intDay){
					return strErr + "�����������դ����Ϥ��Ƥ�������" + System.getProperty("line.separator");
				}else{
					return "";
				}
			}else{
				return strErr + "�����շ��������Ϥ��Ƥ�������" + System.getProperty("line.separator");
			}
		}else{
			return "";
		}
	}
	public static String dateTypeCheck(String strYear,String strMonth,String strDay,String strErr){
		int intYear,intMonth,intDay;
		try {
			intYear =Integer.parseInt(strYear);
			intMonth=Integer.parseInt(strMonth);
			intDay  =Integer.parseInt(strDay);
		} catch (NumberFormatException e) {
			return "ǯ�����Ͽ��ͤ����Ϥ��Ƥ�������" + System.getProperty("line.separator");
		}
		Calendar objCal=Calendar.getInstance();
		objCal.set(intYear,intMonth-1,intDay);
		if(objCal.get(Calendar.YEAR)!=intYear || objCal.get(Calendar.MONTH)!=intMonth-1 || objCal.get(Calendar.DATE)!=intDay){
			return strErr + "�����������շ��������Ϥ��Ƥ�������" + System.getProperty("line.separator");
		}else{
			return "";
		}
	}
	public static String rangeCheck(String strVal,int intMax,int intMin,String strErr){
		if(strVal!=null && !strVal.equals("")){
			int intVal=0;
			try {
				intVal=Integer.parseInt(strVal);
			} catch (NumberFormatException e) {
				return strErr + "�Ͽ��ͤ����Ϥ��Ƥ�������" + System.getProperty("line.separator");
			}
			if(intVal>=intMin && intVal<=intMax){
				return "";
			}else{
				return strErr + "��" + intMin + "��ʾ塢����" + intMax + "��ʲ������Ϥ��Ƥ�������" + System.getProperty("line.separator");
			}
		}else{
			return "";
		}
	}
	public static String regExCheck(String strVal,String strPtn,String strErr){
		if(strVal!=null && !strVal.equals("")){
			Pattern objPtn=Pattern.compile(strPtn,Pattern.CASE_INSENSITIVE);
			Matcher objMth=objPtn.matcher(strVal);
			if(objMth.find()){
				return "";
			}else{
				return strErr + "�����������������Ϥ��Ƥ�������" + System.getProperty("line.separator");
			}
		}else{
			return "";
		}
	}
	public static String compareCheck(String strVal1,String strVal2,String strErr1,String strErr2){
		if(strVal1!=null && !strVal1.equals("") && strVal2!=null && !strVal2.equals("")){
			if(strVal1.compareTo(strVal2)<0){
				return "";
			}else{
				return strErr1 + "��" + strErr2 + "��꾮�����ͤ���ꤷ�Ƥ�������" + System.getProperty("line.separator");
			}
		}else{
			return "";
		}
	}
	public static String duplicateCheck(String strSql,String strErr) {
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery(strSql);
			if(rs.next()){
				return strErr + "����ʣ���Ƥ��ޤ�" + System.getProperty("line.separator");
			}else{
				return "";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
}
