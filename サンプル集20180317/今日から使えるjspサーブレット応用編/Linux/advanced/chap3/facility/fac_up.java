package facility;

import facility.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class fac_up extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		fac_bean objFac=new fac_bean();
		String strYear =request.getParameter("year");
		String strMonth=request.getParameter("month");
		String strDay  =request.getParameter("day");
		String strDate =strYear + "-" + strMonth + "-" + strDay;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			PreparedStatement prdSql1=db.prepareStatement("UPDATE fac_master SET r08=?, r09=?, r10=?, r11=?, r12=?, r13=?, r14=?, r15=?, r16=?, r17=? WHERE fId=? AND rDate=?");
			PreparedStatement prdSql2=db.prepareStatement("INSERT INTO fac_master(fId,rDate,r08,r09,r10,r11,r12,r13,r14,r15,r16,r17) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
			objFac.getFacInfo();
			for(int i=0;i<objFac.getResultCount();i++){
				String[] aryVal=new String[18];
				for(int x=8;x<18;x++){
					aryVal[x]=request.getAttribute(objFac.getFid(i) + "-" + x)==null ? "" : (String)request.getAttribute(objFac.getFid(i) + "-" + x);
				}
				objFac.getReserveInfo(strYear,strMonth,strDay,objFac.getFid(i));
				if(objFac.getFlag()){
					for(int x=1;x<11;x++){prdSql1.setString(x,aryVal[x+7]);}
					prdSql1.setString(11,objFac.getFid(i));
					prdSql1.setString(12,strDate);
					prdSql1.executeUpdate();
				}else{
					prdSql2.setString(1,objFac.getFid(i));
					prdSql2.setString(2,strDate);
					for(int x=3;x<13;x++){prdSql2.setString(x,aryVal[x+5]);}
					prdSql2.executeUpdate();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("/advanced/chap3/facility/index.jsp");
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
