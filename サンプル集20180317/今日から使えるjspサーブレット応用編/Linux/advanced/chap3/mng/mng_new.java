package mng;

import beanYama.*;
import mng.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class mng_new extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		String[] dpt={"ÁíÌ³","»ñºà","µ»½Ñ","À½Â¤","¥·¥¹¥Æ¥à"};
		request.setAttribute("dpt",dpt);
		getServletConfig().getServletContext().getRequestDispatcher("/chap3/mng/new.jsp").forward(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}