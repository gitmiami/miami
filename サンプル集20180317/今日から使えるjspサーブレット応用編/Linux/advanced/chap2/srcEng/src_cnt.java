package srcEng;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class src_cnt extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			objSql.executeUpdate("UPDATE src_master SET cnt=cnt+1 WHERE url='" + request.getAttribute("url") + "'");
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect((String)request.getAttribute("url"));
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		doGet(request,response);
	}
}
