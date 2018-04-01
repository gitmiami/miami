import beanYama.*;
import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class rcvMail extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		response.setContentType("text/html;charset=EUC-JP");
		PrintWriter out=response.getWriter();
		try {
			out.print("<html>");
			out.print("<head><title>受信メール一覧</title>");
			out.print("<base target='down' /></head><body>");
			out.print("<h1>受信トレイ</h1>");
			out.print("[<a href='/basic/chap4/mail/mail.html' target='_blank'>");
			out.print("メール送信</a>]");
			out.print("<table border='1'>");
			out.print("<tr><th>件名</th><th>送信者</th><th>受信日</th></tr>");
			Properties objPrp=System.getProperties();
			Session session=Session.getDefaultInstance(objPrp);
			Store objStr=session.getStore("pop3");
			objStr.connect("pop.XXXXX.ne.jp","XXX99999","XXXXX");
			Folder objFld=objStr.getDefaultFolder().getFolder("INBOX");
			objFld.open(objFld.READ_ONLY);
			if(objFld.getMessageCount()>0){
				Message[] objMsg=objFld.getMessages();
				for(int i=0;i<objMsg.length;i++){
					Address[] objFrm=objMsg[i].getFrom();
					out.print("<tr>");
					out.print("<td><a href='/basic/servlet/rcvMail_desc?num=" + (i+1) + "' target='down'>");
					out.print(objMsg[i].getSubject() + "</a></td>");
					out.print("<td>" + BeanEncode.htmlEncode(MimeUtility.decodeText(objFrm[0].toString())) +"</td>");
					out.print("<td>" + objMsg[i].getSentDate() + "</td>");
					out.print("</tr>");
				}
			}else{
				out.print("<div style='color:Red;'>メッセージはありません</div>");
			}
			objFld.close(false);
			objStr.close();
			out.print("</body></html>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
