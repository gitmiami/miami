package board;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.mail.internet.*;

public class brd_cookie extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		boolean flag=false;
		String uid=null,passwd=null,unam=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		response.setContentType("text/html;charset=EUC-JP");
		PrintWriter out=response.getWriter();
		try {
			String strAth=request.getHeader("authorization");
			if(strAth !=null && strAth.substring(0,6).equals("Basic ")){
				String strTmp=MimeUtility.decodeText("=?iso-8859-1?B?" + strAth.substring(6) + "?=");
				uid=strTmp.substring(0,strTmp.indexOf(":"));
				passwd=strTmp.substring(strTmp.indexOf(":")+1);
				Class.forName(objRB.getString("jdbcDriver"));
				Connection db=DriverManager.getConnection(objRB.getString("conStr"));
				Statement objSql=db.createStatement();
				ResultSet rs=objSql.executeQuery("SELECT * FROM brd_usr WHERE uid='" + uid + "' AND passwd='" + passwd + "'");
				if(rs.next()){
					unam=rs.getString("unam");
					flag=true;
				}
			}
			if(flag){
				Cookie objCok=new Cookie("uid",uid);
				objCok.setMaxAge(60*60*24*180);
				objCok.setPath("/");
				response.addCookie(objCok);
				response.sendRedirect("/advanced/chap3/board/board.jsp");
			}else{
				response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
				response.setHeader("www-authenticate","basic realm=\"Message Board\"");
				out.println("Access is Denied!!");
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
