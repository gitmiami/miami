package sche;

import beanYama.*;
import sche.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class sche_index extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		response.setContentType("text/html;charset=Shift_JIS");
		PrintWriter out=response.getWriter();
		sche_bean objSche=new sche_bean();
		String[] strNam=objSche.authenticate(request.getHeader("authorization"));
		if(strNam[0]!=null){
			HttpSession session=request.getSession();
			session.setAttribute("id" ,strNam[0]);
			session.setAttribute("nam",strNam[1]);
			out.println("<html><head>");
			out.println("<title>スケジュール管理［" +strNam[1] + "］</title>");
			out.println("</head><body>");
			Calendar objCal=Calendar.getInstance();
			int intY=objCal.get(Calendar.YEAR);
			int intM=objCal.get(Calendar.MONTH);
			int intD=objCal.get(Calendar.DATE);
			int intNum=0;
			if(request.getAttribute("num")!=null){
				intNum=Integer.parseInt((String)request.getAttribute("num"));
			}
			Calendar fDay=Calendar.getInstance();
			Calendar lDay=Calendar.getInstance();
			fDay.set(intY,intM+intNum  ,1);
			lDay.set(intY,intM+intNum+1,0);
			int intFirst=fDay.get(Calendar.DAY_OF_WEEK);
			int intLast =lDay.get(Calendar.DATE);
			int intDay  =1;
			out.println("<h1 style='text-align:center;'>");
			out.println("<img src='/advanced/chap3/sche/sche.gif' ");
			out.println("width='25' height='25' />");
			out.println(EncodeUtil.formatDate("yyyy年MM月",fDay.getTime()) + "の予定");
			out.println("<img src='/advanced/chap3/sche/sche.gif'");
			out.println(" width='25' height='25' />");
			out.println("</h1>");
			out.println("<table border='1' align='center'>");
			out.println("<tr>");
			out.println("<th>Sun</th><th>Mon</th><th>Tue</th><th>Wed</th>");
			out.println("<th>Thu</th><th>Fri</th><th>Sat</th></tr><tr>");
			for(int i=1;i<intFirst+intLast;i++){
				intDay=i-(intFirst-1);
				Calendar tmpCal=Calendar.getInstance();
				tmpCal.set(fDay.get(Calendar.YEAR),fDay.get(Calendar.MONTH),intDay);
				if(i<intFirst){
					out.println("<td width='40'><br /></td>");
				}else{
					ResultSet rs=objSche.getTodayCategory(strNam[0],tmpCal);
					out.print("<td width='50' height='30' valign='top'>");
					out.print("<a href='/advanced/servlet/sche.sche_day?dat=");
					out.print(EncodeUtil.formatDate("yyyy-MM-dd",tmpCal.getTime()) + "'>");
					out.print(intDay + "</a><br />");
					try {
						while(rs.next()){
							out.print("<img src='/advanced/chap3/sche/");
							out.print(rs.getString("pic") + "' ");
							out.print("alt='" + rs.getString("nam") + "' ");
							out.print("width='15' height='15' />");
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					out.println("</td>");
				}
				if(i % 7==0){out.println("</tr><tr>");}
			}
			out.println("</table>");
			out.println("<br />");
			out.println("<div align='center'>");
			out.println("＜＜<a href='sche.sche_index?num=" + (intNum-1) + "'>前の月へ</a>");
			out.println("｜<a href='sche.sche_index?num=" + (intNum+1) + "'>次の月へ</a>＞＞");
			out.println("</div></body></html>");
		}else{
			response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
			response.setHeader("www-authenticate","basic realm=\"Schedule\"");
			out.println("!!Access Is Denied!!");
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
