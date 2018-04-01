package mail;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class MailController extends HttpServlet {

	protected void doPost(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("Shift_JIS");
		MailBeans mailbeans = new MailBeans();
		mailbeans.setTo(request.getParameter("to"));
		mailbeans.setCC(request.getParameter("cc"));
		mailbeans.setBCC(request.getParameter("bcc"));
		mailbeans.setSubject(request.getParameter("subject"));
		mailbeans.setMailtext(request.getParameter("mailtext"));
		
		try {
			mailbeans.sendMail();
		} catch (Exception e) {
		}
		
		request.setAttribute("MailBeans",mailbeans);
        	getServletConfig().getServletContext().getRequestDispatcher("/SentMail.jsp")
		.forward(request,response);
	}
}