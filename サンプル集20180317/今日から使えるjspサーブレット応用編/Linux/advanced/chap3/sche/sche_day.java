package sche;

import beanYama.*;
import sche.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class sche_day extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		ServletContext application=getServletConfig().getServletContext();
		HttpSession session=request.getSession();
		request.setAttribute("id", (String)session.getAttribute("id"));
		request.setAttribute("nam",(String)session.getAttribute("nam"));
		if(session.getAttribute("id")==null){
			response.sendRedirect("/advanced/servlet/sche.sche_index");
		}
		String[] tim=new String[48];
		int cnt=0;
		for(int i=0;i<240;i+=5){
			String tmp=(new Integer((int)Math.floor(i/10))).toString();
			if(tmp.length()==1){tmp="0" + tmp;}
			if(i % 10 == 0){tmp+=":00";}else{tmp+=":30";}
			tim[cnt]=tmp;
			cnt++;
		}
		request.setAttribute("tim",tim);
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM sche_category");
			ArrayList objAry1=new ArrayList();
			ArrayList objAry2=new ArrayList();
			while(rs.next()){
				objAry1.add(rs.getString("id"));
				objAry2.add(rs.getString("nam"));
			}
			request.setAttribute("category_id" ,objAry1.toArray());
			request.setAttribute("category_nam",objAry2.toArray());
			getServletConfig().getServletContext().getRequestDispatcher("/chap3/sche/day.jsp").forward(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
