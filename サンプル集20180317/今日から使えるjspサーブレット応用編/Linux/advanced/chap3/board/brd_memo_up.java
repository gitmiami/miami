package board;

import beanYama.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import java.util.regex.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class brd_memo_up extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			String uTime=EncodeUtil.formatDate("yyyy-MM-dd HH:mm:ss");
			objSql.executeUpdate("INSERT INTO brd_msg(uid,sec,psn,uTime,dSec,tel,comment,uPsn) VALUES('" + request.getAttribute("uid") + "','" + request.getAttribute("sec") + "','" + request.getAttribute("psn") + "','" + uTime + "'," + request.getAttribute("dSec") + ",'" + request.getAttribute("tel") + "','" + request.getAttribute("comment") + "','" + request.getAttribute("uPsn") + "')");
			response.sendRedirect("/advanced/chap3/board/board.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
