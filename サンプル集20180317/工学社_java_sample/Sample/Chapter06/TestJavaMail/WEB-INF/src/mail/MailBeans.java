package mail;

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
public class MailBeans implements Serializable {

	private final static String FROM = "*****@*****";
	private final static String PERSONAL = "JAVA班";
	private final static String SMTPHOST = "*****";
	
	private String to;
	private String cc;
	private String bcc;
	private String subject;
	private String mailtext;

	public MailBeans() {
	}
	
	public void sendMail() throws UnsupportedEncodingException, MessagingException {

		Properties props = new Properties();
		props.put("mail.smtp.host", SMTPHOST);
		Session sess = Session.getDefaultInstance(props, null);
		MimeMessage mmsg = new MimeMessage(sess);
		
		if(to != null && !to.trim().equals("")){
			mmsg.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
		}
		
		if(cc != null && !cc.trim().equals("")){
			mmsg.addRecipient(Message.RecipientType.CC,new InternetAddress(cc));
		}
		
		if(bcc != null && !bcc.trim().equals("")){
			mmsg.addRecipient(Message.RecipientType.BCC,new InternetAddress(bcc));
		}
		
		mmsg.setFrom(new InternetAddress(FROM, PERSONAL,"ISO-2022-JP"));
		mmsg.setSubject(subject,"ISO-2022-JP");
		mmsg.setHeader("Content-Type", "text/plain");
		mmsg.setSentDate(new Date());
		mmsg.setText(mailtext +" ","ISO-2022-JP");
		Transport.send(mmsg);
	}
	
	public String getTo(){
		return to;
	}
	
	public void setTo(String to) {
		this.to = to;
	}
	
	public String getCC(){
		return cc;
	}
	
	public void setCC(String cc) {
		this.cc = cc;
	}
	
	public String getBCC(){
		return bcc;
	}
	
	public void setBCC(String bcc) {
		this.bcc = bcc;
	}
	
	public String getSubject(){
		return subject;
	}
	
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	public String getMailtext(){
		return mailtext;
	}
	
	public void setMailtext(String mailtext) {
		this.mailtext = mailtext;
	}
}