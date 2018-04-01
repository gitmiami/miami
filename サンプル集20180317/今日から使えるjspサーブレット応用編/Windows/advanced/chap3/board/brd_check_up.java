package board;

import beanYama.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class brd_check_up extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			objSql.executeUpdate("UPDATE brd_usr SET present=" + request.getAttribute("present") + ",plac='" + request.getAttribute("plac") + "',rTime='" + request.getAttribute("rTime") + "',memo='" + request.getAttribute("memo") + "',uTime='" + EncodeUtil.formatDate("yyyy-MM-dd HH:mm:ss") + "' WHERE uid='" + request.getAttribute("uid") + "'");
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("/advanced/chap3/board/board.jsp");
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
