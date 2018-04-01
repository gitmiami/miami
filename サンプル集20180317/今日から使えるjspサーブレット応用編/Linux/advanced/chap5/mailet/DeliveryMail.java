import java.sql.*;
import java.util.*;
import java.text.*;
import javax.mail.*;
import javax.mail.internet.*;
import org.apache.mailet.*;

public class DeliveryMail extends GenericMailet {
	public void service (Mail objMail) throws MessagingException {
		StringBuffer objSb=new StringBuffer();
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			StringTokenizer objTkn=new StringTokenizer(((String)objMail.getMessage().getContent()).trim(),"-");
			int intStart=Integer.parseInt((String)objTkn.nextToken());
			int intEnd  =Integer.parseInt((String)objTkn.nextToken());
			Class.forName(objRB.getString("jdbcDriver"));
			Connection db=DriverManager.getConnection(objRB.getString("conStr"));
			Statement objSql=db.createStatement();
			for(int i=intStart;i<=intEnd;i++){
				ResultSet rs=objSql.executeQuery("SELECT * FROM ml_master WHERE id=" + i);
				if(rs.next()){
					DecimalFormat objDm=new DecimalFormat("00000");
					String strSbj="[ML:" + objDm.format(rs.getLong("id")) + "] " + rs.getString("title");
					Properties objPrp=System.getProperties();
					Session session=Session.getDefaultInstance(objPrp,null);
					MimeMessage objMsg=new MimeMessage(session);
					objMsg.setRecipient(Message.RecipientType.TO,objMail.getSender().toInternetAddress());
					InternetAddress objFrm=new InternetAddress("sample3@localhost","");
					objMsg.setFrom(objFrm);
					objMsg.setSubject(MimeUtility.encodeText(strSbj,"iso-2022-jp","B"));
					objMsg.setContent(rs.getString("body"),"text/plain; charset=iso-2022-jp");
					getMailetContext().sendMail(objMsg);
				}else{
					continue;
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}