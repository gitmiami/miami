package tagLib;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class SendMail extends BodyTagSupport {
	private String smtpServer;
	private String to;
	private String toNumber;
	private String fromAddress;
	private String fromName;
	private String subject;
	public int doEndTag() throws JspException {
		try {
			Properties objPrp=new Properties();
			objPrp.put("mail.smtp.host",smtpServer);
			objPrp.put("mail.host",smtpServer);
			Session objSes=Session.getInstance(objPrp,null);
			MimeMessage objMsg=new MimeMessage(objSes);
			InternetAddress[] aryIad=new InternetAddress[Integer.parseInt(toNumber)];
			StringTokenizer objTkn=new StringTokenizer(to,";");
			for(int i=0;i<Integer.parseInt(toNumber);i++){
				String strAdd=(String)objTkn.nextToken();
				String strNam=(String)objTkn.nextToken();
				aryIad[i]=new InternetAddress(strAdd,strNam);
			}
			InternetAddress objFrm=new InternetAddress(fromAddress,fromName);
			objMsg.setRecipients(Message.RecipientType.TO,aryIad);
			objMsg.setFrom(objFrm);
			objMsg.setSubject(MimeUtility.encodeText(subject,"iso-2022-jp","B"));
			String strBody=bodyContent.getString();
			bodyContent.clearBody();
			objMsg.setContent(strBody,"text/plain; charset=iso-2022-jp");
			Transport.send(objMsg);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}
	public void setSmtpServer(String smtpServer){
		this.smtpServer=smtpServer;
	}
	public void setTo(String to){
		this.to=to;
	}
	public void setToNumber(String toNumber){
		this.toNumber=toNumber;
	}
	public void setFromAddress(String fromAddress){
		this.fromAddress=fromAddress;
	}
	public void setFromName(String fromName){
		this.fromName=fromName;
	}
	public void setSubject(String subject){
		this.subject=subject;
	}
}
