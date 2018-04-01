import java.sql.*;
import java.util.*;
import java.text.*;
import javax.mail.*;
import javax.mail.internet.*;
import org.apache.mailet.*;

public class MailingList extends GenericMailet {
	public void service (Mail objMail) throws MessagingException {
		StringBuffer objSb=new StringBuffer();
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM ml_usr");
			while(rs.next()){
				objSb.append(rs.getString("email"));
				objSb.append(",");
			}
			String strSbj =objMail.getMessage().getSubject();
			String strBody=(String)objMail.getMessage().getContent();
			PreparedStatement objPS=db.prepareStatement("INSERT INTO ml_master(title,body) VALUES(?,?)");
			objPS.setString(1,strSbj);
			objPS.setString(2,strBody);
			objPS.executeUpdate();
			Statement objStt=db.createStatement();
			ResultSet rt=objStt.executeQuery("SELECT max(id) AS num FROM ml_master");
			if(rt.next()){
				DecimalFormat objDm=new DecimalFormat("00000");
				strSbj="[ML:" + objDm.format(rt.getLong("num")) + "] " + strSbj;
			}else{
				strSbj="[ML:xxxxx] " + strSbj;
			}
			Properties objPrp=System.getProperties();
			Session session=Session.getDefaultInstance(objPrp,null);
			MimeMessage objMsg=new MimeMessage(session);
			objMsg.setRecipients(Message.RecipientType.BCC,objSb.toString());
			InternetAddress objFrm=new InternetAddress("sample2@localhost","ML");
			objMsg.setFrom(objFrm);
			objMsg.setSubject(MimeUtility.encodeText(strSbj,"iso-2022-jp","B"));
			objMsg.setContent(strBody,"text/plain; charset=iso-2022-jp");
			getMailetContext().sendMail(objMsg);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}