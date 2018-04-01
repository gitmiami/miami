package db;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class db_down extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		response.setContentType("application/octet-stream;charset=Shift_JIS");
		response.setHeader("Content-Disposition","attachment; filename=out.csv");
		PrintWriter out=response.getWriter();
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
			Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=Shift_JIS");
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM mng_usr");
			ResultSetMetaData rsScm=rs.getMetaData();
			out.println("ユーザID,パスワード,ユーザ名,部門,権限");
			while(rs.next()){
				for(int i=1;i<=rsScm.getColumnCount();i++){
					out.print(rs.getString(i));
					out.print(i<=rsScm.getColumnCount() ? "," : "");
				}
				out.print(System.getProperty("line.separator"));
			}
			objSql.close();
			db.close();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
