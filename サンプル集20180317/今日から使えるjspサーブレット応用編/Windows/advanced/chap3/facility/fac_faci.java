package facility;

import beanYama.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class fac_faci extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		String strYear =(String)request.getAttribute("yr");
		String strMonth=(String)request.getAttribute("mon");
		String strDay  =(String)request.getAttribute("dy");
		String strErr=CheckUtil.dateTypeCheck(strYear,strMonth,strDay,"—\–ñ“ú");
		request.setAttribute("samples.error.message",strErr);
		getServletConfig().getServletContext().getRequestDispatcher("/chap3/facility/faci.jsp").forward(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
