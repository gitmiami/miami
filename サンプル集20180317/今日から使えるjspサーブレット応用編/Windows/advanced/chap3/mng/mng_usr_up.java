package mng;

import mng.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class mng_usr_up extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		mng_usr_bean objUsr=new mng_usr_bean();
		if(request.getParameter("mid0").equals("insert")){
			objUsr.setUsrInfo((String)request.getAttribute("uid0"),(String)request.getAttribute("passwd0"),(String)request.getAttribute("unam0"),(String)request.getAttribute("depart0"),(String)request.getAttribute("admin0"),(String)request.getAttribute("super0"),(String)request.getAttribute("user0"));
		}
		for(int i=1;i<Integer.parseInt(request.getParameter("cnt"));i++){
			if(request.getParameter("mid" + i).equals("update")){
				objUsr.updateUsrInfo(request.getParameter("uid" + i),request.getParameter("passwd" + i),request.getParameter("unam" + i),request.getParameter("depart" + i),request.getParameter("admin" + i),request.getParameter("super" + i),request.getParameter("user" + i));
			}
			if(request.getParameter("mid" + i).equals("delete")){
				objUsr.removeUsrInfo(request.getParameter("uid" + i));
			}
		}
		response.sendRedirect("/advanced/servlet/mng.mng_usr");
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}