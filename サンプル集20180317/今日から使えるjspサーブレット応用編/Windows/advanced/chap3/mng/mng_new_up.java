package mng;

import mng.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class mng_new_up extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		try {
			mng_bean objMng=new mng_bean();
			objMng.setInfo(request.getParameter("id"),request.getParameter("nam"),request.getParameter("fnum"),request.getParameter("depart"),request.getParameter("plac"),request.getParameter("dat"),request.getParameter("mem"));
			response.sendRedirect("/advanced/servlet/mng.mng_new");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}