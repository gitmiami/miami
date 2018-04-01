package db;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class uploadFile extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		int i,intDat=0,intErr=0;
		String strDat=null;
		response.setContentType("text/html;charset=EUC-JP");
		PrintWriter out=response.getWriter();
		try {
			ServletContext application=getServletConfig().getServletContext();
			ServletInputStream objInp=request.getInputStream();
			ByteArrayOutputStream objBops=new ByteArrayOutputStream();
			PrintStream objPStr=new PrintStream(objBops,true);
			objPStr.print("Content-Type: " + request.getContentType());
			objPStr.println(System.getProperty("line.separator"));
			while((i=objInp.read())!=-1){objBops.write(i);}
			Properties objPrp=System.getProperties();
			Session objSes=Session.getDefaultInstance(objPrp);
			MimeMessage objMsg=new MimeMessage(objSes,new ByteArrayInputStream(objBops.toByteArray()));
			BodyPart objBP=((MimeMultipart)objMsg.getContent()).getBodyPart(0);
			InputStreamReader objIS=new InputStreamReader(objBP.getInputStream());
			BufferedReader objBR=new BufferedReader(objIS);
			Class.forName("org.gjt.mm.mysql.Driver");
			Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=EUC-JP");
			PreparedStatement objSql1=db.prepareStatement("INSERT INTO upload_master(id,nam,val) VALUES(?,?,?)");
			PreparedStatement objSql2=db.prepareStatement("UPDATE upload_master SET nam=?,val=? WHERE id=?");
			PreparedStatement objSql3=db.prepareStatement("DELETE FROM upload_master WHERE id=?");
			out.println("<html><head><title>処理結果</title></head><body>");
			out.println("<h1>アップロード処理結果</h1><hr />");
			out.println("<p>以下のデータについて、エラーが発生しました</p>");
			out.println("<table border='0'>");
			out.println("<tr style='background:#CCddFF'><th>エラー行</th>");
			out.println("<th>エラーメッセージ</th><th>投入データ</th></tr>");
			while(objBR.ready()){
				try {
					strDat=objBR.readLine();
					StringTokenizer objTkn=new StringTokenizer(strDat,"\t");
					ArrayList objAry=new ArrayList();
					while(objTkn.hasMoreTokens()){objAry.add(objTkn.nextToken());}
					Object[] aryData=objAry.toArray();
					switch(((String)aryData[0]).charAt(0)){
						case 'I' :
							objSql1.setString(1,(String)aryData[1]);
							objSql1.setString(2,(String)aryData[2]);
							objSql1.setInt(3,Integer.parseInt((String)aryData[3]));
							objSql1.executeUpdate();
							break;
						case 'U' :
							objSql2.setString(1,(String)aryData[2]);
							objSql2.setInt(2,Integer.parseInt((String)aryData[3]));
							objSql2.setString(3,(String)aryData[1]);
							objSql2.executeUpdate();
							break;
						case 'D' :
							objSql3.setString(1,(String)aryData[1]);
							objSql3.executeUpdate();
							break;
					}
				} catch (Exception e) {
					++intErr;
					out.println("<tr>");
					out.println("<td align='right'>" + (intDat+1) + "行</td>");
					out.println("<td>" + e.getLocalizedMessage() + "</td>");
					out.println("<td>" + strDat + "</td>");
					out.println("</tr>");
				}
				++intDat;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			out.println("</table><p><b>" + intDat + "</b>件のデータ中、<b>");
			out.println(intErr + "</b>件のエラーが発生しました</p>");
			out.println("</body></html>");
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		doGet(request,response);
	}
}
