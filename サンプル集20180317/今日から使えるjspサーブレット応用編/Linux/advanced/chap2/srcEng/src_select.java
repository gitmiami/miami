package srcEng;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class src_select extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		boolean flag=false;
		Cookie[] aryCok=request.getCookies();
		if(aryCok!=null){
			for(int i=0;i<aryCok.length;i++){
				if(aryCok[i].getName().equals("bookmark")){flag=true;}
			}
		}
		if(flag){
			response.sendRedirect("/advanced/chap2/srcEng/disp.jsp");
		}else{
			response.sendRedirect("/advanced/chap2/srcEng/bookmark.jsp");
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		doGet(request,response);
	}
}
