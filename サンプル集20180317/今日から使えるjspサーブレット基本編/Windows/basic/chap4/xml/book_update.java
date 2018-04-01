package xml;

import xml.*;
import beanYama.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class book_update extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		ServletContext application=getServletConfig().getServletContext();
		book_bean objXml=new book_bean();
		for(int i=1;i<=100;i++){
			String strMid=request.getParameter("mid" + i);
			if(strMid==null){
				break;
			}else{
				String strIsb=request.getParameter("isbn" + i);
				String strNam=BeanEncode.strEncode(request.getParameter("name" + i));
				String strUrl=BeanEncode.strEncode(request.getParameter("url" + i));
				String strPub=BeanEncode.strEncode(request.getParameter("publish" + i));
				String strPrc=request.getParameter("price" + i);
				String strDat=request.getParameter("published" + i);
				if(strMid.equals("update")){
					objXml.updateBookInfo(application.getRealPath("data/xml/books.xml"),strIsb,strNam,strUrl,strPub,strPrc,strDat);
					continue;
				}
				if(strMid.equals("delete")){
					objXml.removeBookInfo(application.getRealPath("data/xml/books.xml"),strIsb);
				}
			}
		}
		response.sendRedirect("/basic/servlet/xml.disp_update");
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}