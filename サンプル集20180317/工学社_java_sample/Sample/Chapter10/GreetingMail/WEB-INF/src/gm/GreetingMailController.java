package gm;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class GreetingMailController extends HttpServlet{
	
	protected void doPost(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("Shift_JIS");
		GreetingMailBeans gmbeans = new GreetingMailBeans();
		gmbeans.setTo(request.getParameter("to"));
		gmbeans.setToname(request.getParameter("toname"));
		gmbeans.setImg(request.getParameter("picture_hidden"));
		gmbeans.setMailtext(request.getParameter("mailtext"));
		gmbeans.setSender(request.getParameter("sender"));
		gmbeans.makeHtmlMail();
		
		try {
			gmbeans.sendMail();
		} catch (Exception e) {
		}
		
		request.setAttribute("GreetingMailBeans",gmbeans);
        	getServletConfig().getServletContext().getRequestDispatcher("/SentGreetingMail.jsp")
		.forward(request,response);
	}
}
