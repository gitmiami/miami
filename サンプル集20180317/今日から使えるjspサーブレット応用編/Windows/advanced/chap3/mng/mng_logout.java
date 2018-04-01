package mng;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class mng_logout extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.invalidate();
		response.sendRedirect("/advanced/chap3/mng/index.jsp");
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		doGet(request,response);
	}
}
