package bbs;

import beanYama.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class bbs_admin extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		String strTmp=null;
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			String strMid=(String)request.getAttribute("sbm");
			switch(strMid.charAt(0)){
				case 'Éf' :
					strTmp="title='çÌèúçœÇ›'";
					break;
				case 'å√' :
					strTmp="sdat<='" + request.getAttribute("old") + "'";
					break;
				case 'ì¡' :
					strTmp="id=" + request.getAttribute("num");
					break;
			}
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			objSql.executeUpdate("DELETE FROM bbs_master WHERE " + strTmp);
			response.sendRedirect("/advanced/chap2/bbs/admin.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
