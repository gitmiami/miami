package sche;

import beanYama.*;
import sche.*;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class sche_up extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		HttpSession session=request.getSession();
		sche_bean objSche=new sche_bean();
		try {
			if(request.getAttribute("sbm")!=null){
				objSche.setSchedule((String)session.getAttribute("id"),(String)request.getAttribute("dat"),(String)request.getAttribute("bTim"),(String)request.getAttribute("eTim"),(String)request.getAttribute("pNam"),(String)request.getAttribute("cate"),(String)request.getAttribute("memo"));
				response.sendRedirect("/advanced/servlet/sche.sche_day?dat=" + request.getAttribute("dat"));
			}else{
				response.setContentType("text/html;charset=Shift_JIS");
				PrintWriter out=response.getWriter();
				ResultSet rs=objSche.search((String)request.getAttribute("dat"),(String)request.getAttribute("bTim"),(String)request.getAttribute("eTim"));
				out.println("<html>");
				out.println("<head>");
				out.println("<title>�O���[�v���X�P�W���[������</title>");
				out.println("</head>");
				out.println("<h1 align='center'>");
				out.println("<img src='/advanced/chap3/sche/sche.gif' ");
				out.println("width='25' height='25' />");
				out.println("�����o�X�P�W���[���i" + request.getAttribute("dat"));
				out.println("�F" + request.getAttribute("bTim") + "-");
				out.println(request.getAttribute("eTim") + "�j");
				out.println("<img src='/advanced/chap3/sche/sche.gif' ");
				out.println("width='25' height='25' /></h1>");
				out.println("<hr />");
				out.println("<table border='1' align='center'>");
				out.println("<tr><th>�����o��</th><th>�\��</th>");
				out.println("<th>�J�n����</th><th>�I������</th><th>�\��敪</th></tr>");
				while(rs.next()){
					out.println("<tr>");
					out.println("<td>");
					out.println(EncodeUtil.htmlEncode(rs.getString("usr_name")));
					out.println("</td><td>");
					out.println(EncodeUtil.htmlEncode(rs.getString("pNam")));
					out.println("</td><td>");
					out.println(EncodeUtil.htmlEncode(rs.getString("bTim")));
					out.println("</td><td>");
					out.println(EncodeUtil.htmlEncode(rs.getString("eTim")));
					out.println("</td><td>");
					out.println(EncodeUtil.htmlEncode(rs.getString("cate_name")));
					out.println("</td>");
					out.println("</tr>");
				}
				out.println("</table>");
				out.println("</body></html>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
