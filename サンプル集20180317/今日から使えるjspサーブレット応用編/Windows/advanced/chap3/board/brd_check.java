package board;

import beanYama.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class brd_check extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			String[] aryVal1={"1","2","3"};
			String[] aryVal2={"在席","会議中","外出"};
			request.setAttribute("prs_num",aryVal1);
			request.setAttribute("prs",    aryVal2);
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM brd_usr WHERE uid='" + request.getAttribute("uid") + "'");
			if(request.getAttribute("samples.error.message")==null){
				if(rs.next()){
					request.setAttribute("unam",rs.getString("unam"));
					request.setAttribute("uTime",EncodeUtil.formatDate("yyyy年MM月dd日",rs.getDate("uTime")) + EncodeUtil.formatDate(" HH:mm:ss",rs.getTime("uTime")));
					request.setAttribute("present",rs.getString("present"));
					request.setAttribute("plac",rs.getString("plac"));
					request.setAttribute("rTime",rs.getString("rTime"));
					request.setAttribute("memo",rs.getString("memo"));
				}else{
					String[] strKey={"unam","uTime","present","plac","rTime","memo"};
					EncodeUtil.toBlank(request,strKey);
				}
			} else {
				if(rs.next()){
					request.setAttribute("unam",rs.getString("unam"));
					request.setAttribute("uTime",EncodeUtil.formatDate("yyyy年MM月dd日",rs.getDate("uTime")) + EncodeUtil.formatDate(" HH:mm:ss",rs.getTime("uTime")));
				}
			}
			getServletConfig().getServletContext().getRequestDispatcher("/chap3/board/check.jsp").forward(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
