import beanYama.*;
import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class mail extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		Properties objPrp=new Properties();
		objPrp.put("mail.smtp.host","smtp.XXXXX.ne.jp");
		objPrp.put("mail.host","smtp.XXXXX.ne.jp");
		Session session=Session.getInstance(objPrp,null);
		MimeMessage objMsg=new MimeMessage(session);
		String strTo="",strCc="",strBcc="";
		StringTokenizer to =new StringTokenizer(request.getParameter("to"),"\r\n");
		StringTokenizer cc =new StringTokenizer(request.getParameter("cc"),"\r\n");
		StringTokenizer bcc=new StringTokenizer(request.getParameter("bcc"),"\r\n");
		while(to.hasMoreTokens()) {strTo+=to.nextToken() + ",";}
		while(cc.hasMoreTokens()) {strCc+=cc.nextToken() + ",";}
		while(bcc.hasMoreTokens()){strBcc+=bcc.nextToken() + ",";}
		InternetAddress frm=new InternetAddress(request.getParameter("frmMail"),BeanEncode.strEncode(request.getParameter("frmNam")));
		try {
			objMsg.setRecipients(Message.RecipientType.TO,strTo);
			objMsg.setRecipients(Message.RecipientType.CC,strCc);
			objMsg.setRecipients(Message.RecipientType.BCC,strBcc);
			objMsg.setFrom(frm);
			String strSbj=BeanEncode.strEncode(request.getParameter("sbj"));
			objMsg.setSubject(MimeUtility.encodeText(strSbj,"iso-2022-jp","B"));
			objMsg.setContent(BeanEncode.strEncode(request.getParameter("body")),"text/plain; charset=iso-2022-jp");
			Transport.send(objMsg);
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("/basic/chap4/mail/mail.html");
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
