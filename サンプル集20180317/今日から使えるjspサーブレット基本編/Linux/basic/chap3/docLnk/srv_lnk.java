import beanYama.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class srv_lnk extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		String[] aryRst;
		bean_docLink objDoc=new bean_docLink();
		ServletContext application=getServletConfig().getServletContext();
		String strPath=application.getRealPath("chap3/docLnk/content.dat");
		int intPag=Integer.parseInt(request.getParameter("pg"));
		aryRst=objDoc.getNthDescription(strPath,intPag);
		response.sendRedirect("/basic/chap3/docLnk/doc/" + aryRst[0]);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}