package mng;

import mng.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class mng_update_up extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		mng_bean objMng=new mng_bean();
		try {
			for(int i=0;i<Integer.parseInt(request.getParameter("cnt"));i++){
				if(request.getAttribute("del" + i) == null){
					objMng.updateInfo(request.getParameter("id" + i),request.getParameter("depart" + i),request.getParameter("plac" + i),request.getParameter("dat" + i),request.getParameter("mem" + i));
				}else{
					objMng.removeInfo(request.getParameter("id" + i),request.getParameter("depart" + i),request.getParameter("mem" + i));
				}
			}
			response.sendRedirect("/advanced/servlet/mng.mng_update");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
