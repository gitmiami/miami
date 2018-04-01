package sche;

import sche.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class sche_del extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		sche_bean objSche=new sche_bean();
		objSche.removeSchedule((String)request.getAttribute("pid"));
		response.sendRedirect("/advanced/servlet/sche.sche_day?dat=" + request.getAttribute("dat"));
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
