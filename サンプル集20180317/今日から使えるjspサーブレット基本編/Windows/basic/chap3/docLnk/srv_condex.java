import beanYama.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class srv_condex extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		bean_docLink objDoc=new bean_docLink();
		ServletContext application=getServletConfig().getServletContext();
		response.setContentType("text/html;charset=Shift_JIS");
		PrintWriter out=response.getWriter();
		out.println("<html><head><title>—ÎãÈ‚Ì¹ˆæi–ÚŸj</title></head>");
		out.println("<body><h1>—ÎãÈ‚Ì¹ˆæ</h1>");
		String strPath=application.getRealPath("chap3/docLnk/content.dat");
		out.println("<dl>");
		for(int i=1;i<=objDoc.getListCount(strPath);i++){
			String[] aryRst=objDoc.getNthDescription(strPath,i);
			out.println("<dt style='font-size:12pt;font-weight:bold;'>");
			out.println("<a href='/basic/chap3/docLnk/doc/" + aryRst[0] + "'>");
			out.println("<img src='/basic/chap3/docLnk/" + aryRst[1] + "' border='0'>");
			out.println(aryRst[2] + "</a></dt>");
			out.println("<dd>" + aryRst[3] + "</dd>");
		}
		out.println("</dl></body></html>");
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}