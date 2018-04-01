package board;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.mail.internet.*;

public class brd_cookie_del extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		Cookie objCok=new Cookie("uid","");
		objCok.setMaxAge(0);
		objCok.setPath("/");
		response.addCookie(objCok);
		response.sendRedirect("/advanced/chap3/board/board.jsp");
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
