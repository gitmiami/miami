package board;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class brd_disp extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			String uid=null;
			Cookie[] aryCok=request.getCookies();
			for(int i=0;i<aryCok.length;i++){
				if(aryCok[i].getName().equals("uid")){
					uid=aryCok[i].getValue();
					break;
				}
			}
			if(uid.equals((String)request.getAttribute("uid"))){
				Class.forName(objRB.getString("jdbcDriver"));
				Connection db=DriverManager.getConnection(objRB.getString("conStr"));
				Statement objSql=db.createStatement();
				ResultSet rs=objSql.executeQuery("SELECT brd_msg.*, brd_usr.unam FROM brd_msg INNER JOIN brd_usr ON brd_msg.uPsn=brd_usr.uid WHERE brd_msg.uid='" + request.getAttribute("uid") + "'");
				request.setAttribute("msg",rs);
				getServletConfig().getServletContext().getRequestDispatcher("/chap3/board/disp.jsp").forward(request,response);
			}else{
				response.setContentType("text/html;charset=EUC-JP");
				PrintWriter out=response.getWriter();
				out.println("自分宛て以外のメッセージは参照できません");
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
