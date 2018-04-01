import beanYama.*;
import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class rcvMail_desc extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		response.setContentType("text/html;charset=Shift_JIS");
		PrintWriter out=response.getWriter();
		try {
			int num=Integer.parseInt(request.getParameter("num"));
			Properties objPrp=System.getProperties();
			Session session=Session.getDefaultInstance(objPrp);
			Store objStr=session.getStore("pop3");
			objStr.connect("pop.XXXXX.ne.jp","XXX99999","XXXXX");
			Folder objFld=objStr.getDefaultFolder().getFolder("INBOX");
			objFld.open(objFld.READ_ONLY);
			Message objMsg=objFld.getMessage(num);
			Address[] objFrm=objMsg.getFrom();
			out.print("<html>");
			out.print("<head><title>" + objMsg.getSubject() + "</title>");
			out.print("</head><body>");
			out.print("<table border='1'>");
			out.print("<tr><th>åèñº</th><td>" + objMsg.getSubject() + "</td></tr>");
			out.print("<tr><th>ëóêMé“</th><td>" + BeanEncode.htmlEncode(MimeUtility.decodeText(objFrm[0].toString())) + "</td></tr>");
			out.print("<tr><th>ëóêMì˙éû</th><td>" + objMsg.getSentDate() + "</td></tr>");
			out.print("<tr><th valign='top'>ñ{ï∂</th><td><pre>" + objMsg.getContent() + "</pre></td></tr>");
			out.print("</table></body></html>");
			objFld.close(false);
			objStr.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
