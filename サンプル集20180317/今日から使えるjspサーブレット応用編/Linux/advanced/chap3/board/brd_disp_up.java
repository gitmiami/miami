package board;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class brd_disp_up extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			for(int i=1;i<=Integer.parseInt(request.getParameter("cnt"));i++){
				String strId=(String)request.getAttribute("D" + i);
				if(strId != null && !strId.equals("")){
					objSql.executeUpdate("DELETE FROM brd_msg WHERE id=" + strId);
				}
			}
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
