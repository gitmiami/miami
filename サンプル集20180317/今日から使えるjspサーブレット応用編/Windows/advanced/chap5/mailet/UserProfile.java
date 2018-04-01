import java.sql.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import org.apache.mailet.*;

public class UserProfile extends GenericMailet {
	public void service (Mail objMail) throws MessagingException {
		StringBuffer objSb=new StringBuffer();
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			if(objMail.getMessage().getSubject().equals("admin") && ((String)objMail.getMessage().getContent()).trim().equals("admin")){
				Class.forName(objRB.getString("jdbcDriver"));
				Connection db=DriverManager.getConnection(objRB.getString("conStr"));
				Statement objSql=db.createStatement();
				ResultSet rs=objSql.executeQuery("SELECT * FROM ml_usr");
				objSb.append("==========================================");
				objSb.append(System.getProperty("line.separator"));
				objSb.append(System.getProperty("line.separator"));
				objSb.append("　　　メーリングリスト登録ユーザ情報");
				objSb.append(System.getProperty("line.separator"));
				objSb.append(System.getProperty("line.separator"));
				objSb.append("==========================================");
				objSb.append(System.getProperty("line.separator"));
				objSb.append(System.getProperty("line.separator"));
				while(rs.next()){
					objSb.append(rs.getString("unam"));
					objSb.append("\t");
					objSb.append(rs.getString("email"));
					objSb.append(System.getProperty("line.separator"));
				}
				Properties objPrp=System.getProperties();
				Session session=Session.getDefaultInstance(objPrp,null);
				MimeMessage objMsg=new MimeMessage(session);
				objMsg.setRecipient(Message.RecipientType.TO,objMail.getSender().toInternetAddress());
				InternetAddress objFrm=new InternetAddress("sample1@localhost","System");
				objMsg.setFrom(objFrm);
				objMsg.setSubject(MimeUtility.encodeText("登録ユーザ一覧","iso-2022-jp","B"));
				objMsg.setContent(objSb.toString(),"text/plain; charset=iso-2022-jp");
				getMailetContext().sendMail(objMsg);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}