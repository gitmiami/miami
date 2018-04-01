package mng;

import beanYama.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class mng_login extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		response.setContentType("text/html;charset=Shift_JIS");
		HttpSession session=request.getSession();
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT unam,depart,perms FROM mng_usr WHERE uid='" + request.getAttribute("uid") + "' AND passwd='" + request.getAttribute("passwd") + "'");
			if(rs.next()){
				session.setAttribute("uid"   ,request.getAttribute("uid"));
				session.setAttribute("unam"  ,rs.getString("unam"));
				session.setAttribute("depart",rs.getString("depart"));
				session.setAttribute("perms" ,rs.getString("perms"));
				session.setAttribute("flag"  ,"authorized");
				response.sendRedirect("/advanced/chap3/mng/menu.jsp");
			}else{
				session.setAttribute("uid"   ,request.getAttribute("uid"));
				response.sendRedirect("/advance/chap3/mng/index.jsp");
			}
			objSql.close();
			db.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		doGet(request,response);
	}
}
