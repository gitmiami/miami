import beanYama.*;
import java.io.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class upload extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		int i,j;
		String strFile=null;
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
			String[] aryTmp=objBP.getHeader("Content-Disposition");
			loop : for(j=0;j<aryTmp.length;j++){
				StringTokenizer objTkn=new StringTokenizer(BeanEncode.strEncode(aryTmp[j]),";");
				while(objTkn.hasMoreTokens()){
					strFile=objTkn.nextToken();
					if(strFile.indexOf("filename=")!=-1){
						strFile=strFile.substring("filename= ".length());
						strFile=strFile.substring(strFile.lastIndexOf(File.separatorChar)+1);
						strFile=strFile.replace('"',' ').trim();
						break loop;
					}
				}
			}
			InputStream objIS=objBP.getInputStream();
			File objFl=new File(application.getRealPath("chap4/upload/doc/" + strFile));
			FileOutputStream objOut=new FileOutputStream(objFl);
			while((i=objIS.read())!=-1){objOut.write(i);}
			objOut.close();
			response.setContentType("text/html;charset=EUC-JP");
			PrintWriter out=response.getWriter();
			out.println("<html><head><title>アップロード結果</title></head><body>");
			out.println("アップロードに成功しました！");
			out.println("<table border='1'>");
			out.println("<tr><th align='right'>ファイル名</th>");
			out.println("<td>" + strFile + "</td></tr>");
			out.println("<tr><th align='right'>ファイルサイズ</th>");
			out.println("<td>" + Math.ceil(objBP.getSize() / 1024) + "KB</td></tr>");
			out.println("</table>");
			out.println("</body></html>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		doGet(request,response);
	}
}
