package gm;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class GreetingMailBeans implements Serializable {

	private final static String FROM = "*****@*****";
	private final static String SMTPHOST = "*****";
	private final static String SUBJECT = "グリーティングメール";

	private String to;
	private String toname;
	private String img;
	private String sender;
	private String mailtext;
	private String htmlmail;

	public GreetingMailBeans() {
	}
	
	public void makeHtmlMail() {
		MakeGreetingMail mgmail = new MakeGreetingMail();
		mgmail.replaceTableRow(toname);
		mgmail.replaceImg(img);
		mgmail.replaceTableRow(mailtext);
		mgmail.replaceTableRow(sender);
		htmlmail = mgmail.replaceTable();
	}

	public void sendMail() throws UnsupportedEncodingException,
		MessagingException {

		Properties props = System.getProperties();
		props.put("mail.smtp.host", SMTPHOST);
		Session sess = Session.getDefaultInstance(props, null);
		MimeMessage msg = new MimeMessage(sess);
		msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		msg.setFrom(new InternetAddress(FROM, sender ,"ISO-2022-JP"));
		msg.setSubject(SUBJECT, "ISO-2022-JP");
		msg.setHeader("Content-Type", "text/html");	
		msg.setSentDate(new Date());
		msg.setContent(htmlmail + " ", "text/html;charset=ISO-2022-JP");
		Transport.send(msg);
	}
	
	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}
	
	public String getToname() {
		return toname;
	}
	
	public void setToname(String toname) {
		this.toname = toname;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}
	
	public String getMailtext() {
		return mailtext;
	}

	public void setMailtext(String mailtext) {
		this.mailtext = mailtext;
	}
}