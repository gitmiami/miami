package mng;

import mng.*;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class mng_desc extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		mng_bean objMng=new mng_bean();
		objMng.getInfoById((String)request.getAttribute("id"));
		request.setAttribute("objMng",objMng);
		getServletConfig().getServletContext().getRequestDispatcher("/chap3/mng/desc.jsp").forward(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		doGet(request,response);
	}
}
