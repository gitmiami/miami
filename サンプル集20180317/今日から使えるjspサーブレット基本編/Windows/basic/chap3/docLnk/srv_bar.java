import beanYama.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class srv_bar extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		bean_docLink objDoc=new bean_docLink();
		ServletContext application=getServletConfig().getServletContext();
		response.setContentType("text/html;charset=Shift_JIS");
		PrintWriter out=response.getWriter();
		out.println("<form method='POST' action='/basic/servlet/srv_lnk'>");
		out.println("<table border='0'>");
		out.println("<tr><td>");
		String[] aryRst;
		String strPath=application.getRealPath("chap3/docLnk/content.dat");
		String strCur=request.getServletPath();
		int intCnt=objDoc.getListCount(strPath);
		if(objDoc.getListIndex(strPath,strCur)==1){
			out.println("<a href='/basic/servlet/srv_condex'>");
			out.println("<img src='/basic/chap3/docLnk/home.gif'");
			out.println("border='0' alt='ホーム'></a>");
		}else{
			aryRst=objDoc.getPreviousDescription(strPath,strCur);
			out.println("<a href='" + aryRst[0] + "'>");
			out.println("<img src='/basic/chap3/docLnk/prev.gif'");
			out.println("border='0' alt='前へ'></a>");
		}
		out.println("</td><td>");
		out.println("<span style='font-size:12pt;'>");
		out.println("[<input type='text' name='pg' size='2' />/" + intCnt + "]");
		out.println("<input type='submit' value='Jump' />");
		out.println("</span>");
		out.println("</td><td>");
		if(objDoc.getListIndex(strPath,strCur)==intCnt){
			out.println("<a href='/basic/servlet/srv_condex'>");
			out.println("<img src='/basic/chap3/docLnk/home.gif'");
			out.println("border='0' alt='ホーム'></a>");
		}else{
			aryRst=objDoc.getNextDescription(strPath,strCur);
			out.println("<a href='" + aryRst[0] + "'>");
			out.println("<img src='/basic/chap3/docLnk/next.gif'");
			out.println("border='0' alt='次へ'></a>");
		}
		out.println("</td></tr></table></form>");
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}