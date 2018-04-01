package facility;

import beanYama.*;
import facility.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class fac_dl extends HttpServlet {
	private String ur=null;
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		response.setContentType("application/vnd.ms-excel; charset=EUC-JP");
		response.setHeader("Content-Disposition","attachment; filename=out.xls");
		PrintWriter out=response.getWriter();
		fac_bean objFac=new fac_bean();
		out.println("<html><head>");
		out.println("<meta http-equiv='content-type' content='text/html; charset=EUC-JP' />");
		out.println("<title>施設予約状況一覧（ダウンロード）</title>");
		out.println("</head><body>");
		out.println("<h1 style='font-size:14pt;font-weight:bold;'>施設予約状況一覧（ダウンロード）</h1>");
		ur=request.getParameter("usr");
		String strYear =request.getParameter("dl_y");
		String strMonth=request.getParameter("dl_m");
		String strDay  =request.getParameter("dl_d");
		for(int x=0;x<7;x++){
			Calendar objCal=Calendar.getInstance();
			objCal.set(Integer.parseInt(strYear),Integer.parseInt(strMonth)-1,Integer.parseInt(strDay)+x);
			String strTYear =Integer.toString(objCal.get(Calendar.YEAR));
			String strTMonth=Integer.toString(objCal.get(Calendar.MONTH)+1);
			String strTDay  =Integer.toString(objCal.get(Calendar.DATE));
			out.println("<h1 style='font-size:12pt;font-weight:bold;'>");
			out.println(EncodeUtil.formatDate("yyyy年MM月dd日(E)",objCal.getTime()) + "</h1>");
			out.println("<table border='1'><tr>");
			out.println("<th bgcolor='#99ccFF'></th>");
			out.println("<th bgcolor='#99ccFF' nowrap>08:00-</th>");
			out.println("<th bgcolor='#99ccFF' nowrap>09:00-</th>");
			out.println("<th bgcolor='#99ccFF' nowrap>10:00-</th>");
			out.println("<th bgcolor='#99ccFF' nowrap>11:00-</th>");
			out.println("<th bgcolor='#99ccFF' nowrap>12:00-</th>");
			out.println("<th bgcolor='#99ccFF' nowrap>13:00-</th>");
			out.println("<th bgcolor='#99ccFF' nowrap>14:00-</th>");
			out.println("<th bgcolor='#99ccFF' nowrap>15:00-</th>");
			out.println("<th bgcolor='#99ccFF' nowrap>16:00-</th>");
			out.println("<th bgcolor='#99ccFF' nowrap>17:00-</th></tr>");
			objFac.getFacInfo();
			for(int i=0;i<objFac.getResultCount();i++){
				out.println("<tr align='center'>");
				out.println("<th bgcolor='#FFcc99' nowrap>" + objFac.getFnam(i) + "</th>");
				objFac.getReserveInfo(strTYear,strTMonth,strTDay,objFac.getFid(i));
				out.print(objFac.dispBox(objFac.getFid(i), 8,objFac.getR08(),ur,false));
				out.print(objFac.dispBox(objFac.getFid(i), 9,objFac.getR09(),ur,false));
				out.print(objFac.dispBox(objFac.getFid(i),10,objFac.getR10(),ur,false));
				out.print(objFac.dispBox(objFac.getFid(i),11,objFac.getR11(),ur,false));
				out.print(objFac.dispBox(objFac.getFid(i),12,objFac.getR12(),ur,false));
				out.print(objFac.dispBox(objFac.getFid(i),13,objFac.getR13(),ur,false));
				out.print(objFac.dispBox(objFac.getFid(i),14,objFac.getR14(),ur,false));
				out.print(objFac.dispBox(objFac.getFid(i),15,objFac.getR15(),ur,false));
				out.print(objFac.dispBox(objFac.getFid(i),16,objFac.getR16(),ur,false));
				out.print(objFac.dispBox(objFac.getFid(i),17,objFac.getR17(),ur,false));
				out.print("</tr>");
			}
			out.println("</table><p>");
		}
		out.println("</body></html>");
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
