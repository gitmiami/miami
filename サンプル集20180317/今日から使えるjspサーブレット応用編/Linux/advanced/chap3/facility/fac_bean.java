package facility;

import java.io.*;
import java.sql.*;
import java.text.*;
import java.util.*;

public class fac_bean implements Serializable {
	private ArrayList result;
	private FacReserve objFcR;
	private class Facility {
		public String fid;
		public String fnam;
	}
	private class FacReserve {
		public boolean flag;
		public String r08;
		public String r09;
		public String r10;
		public String r11;
		public String r12;
		public String r13;
		public String r14;
		public String r15;
		public String r16;
		public String r17;
	}
	public void getFacInfo() {
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM fac_facility ORDER BY fId ASC");
			result=new ArrayList();
			while(rs.next()){
				Facility objFac=new Facility();
				objFac.fid =rs.getString("fId");
				objFac.fnam=rs.getString("fNam");
				result.add(objFac);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void getReserveInfo(String year, String month, String day, String fid) {
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			String strDat=year + "-" + month + "-" + day;
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM fac_master WHERE fId='" + fid + "' AND rDate='" + strDat + "'");
			objFcR=new FacReserve();
			if(rs.next()){
				objFcR.flag=true;
				objFcR.r08=rs.getString("r08");objFcR.r09=rs.getString("r09");
				objFcR.r10=rs.getString("r10");objFcR.r11=rs.getString("r11");
				objFcR.r12=rs.getString("r12");objFcR.r13=rs.getString("r13");
				objFcR.r14=rs.getString("r14");objFcR.r15=rs.getString("r15");
				objFcR.r16=rs.getString("r16");objFcR.r17=rs.getString("r17");
			}else{
				objFcR.flag=false;
				objFcR.r08="";objFcR.r09="";objFcR.r10="";objFcR.r11="";
				objFcR.r12="";objFcR.r13="";objFcR.r14="";objFcR.r15="";
				objFcR.r16="";objFcR.r17="";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public String dispBox(String fid, int num, String data, String strUsr, boolean flag){
		StringBuffer objBuf=new StringBuffer();
		if(data!=null && data.equals(strUsr)){
			objBuf.append("<td bgcolor='#ccffff'>");
			if(flag){
				objBuf.append("<input type='checkbox' name='" + fid + "-" + num + "'");
				objBuf.append(" value='" + strUsr + "' checked />");
			}else{
				objBuf.append("Í½ÌóºÑ");
			}
			objBuf.append("</td>");
		}else{
			if(data==null || data.equals("")){
				objBuf.append("<td bgcolor='#ccffff'>");
				if(flag){
					objBuf.append("<input type='checkbox' name='" + fid + "-" + num + "'");
					objBuf.append(" value='" + strUsr + "' />");
				}
				objBuf.append("<br /></td>");
			}else{
				objBuf.append("<td bgcolor='#ffff99'>");
				if(flag){
					objBuf.append("<input type='hidden' name='" + fid + "-" + num + "'");
					objBuf.append(" value='" + data + "' checked />");
				}
				objBuf.append("¡ú");
				objBuf.append("</td>");
			}
		}
		return objBuf.toString();
	}
	public int getResultCount(){
		return result.size();
	}
	public String getFid(int index){
		Facility objFac=(Facility)result.get(index);
		return objFac.fid;
	}
	public String getFnam(int index){
		Facility objFac=(Facility)result.get(index);
		return objFac.fnam;
	}
	public boolean getFlag(){return objFcR.flag;}
	public String  getR08(){return objFcR.r08;}
	public String  getR09(){return objFcR.r09;}
	public String  getR10(){return objFcR.r10;}
	public String  getR11(){return objFcR.r11;}
	public String  getR12(){return objFcR.r12;}
	public String  getR13(){return objFcR.r13;}
	public String  getR14(){return objFcR.r14;}
	public String  getR15(){return objFcR.r15;}
	public String  getR16(){return objFcR.r16;}
	public String  getR17(){return objFcR.r17;}
}
