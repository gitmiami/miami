package tagLib;

import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class ServletInfo extends TagSupport {
	public int doStartTag() throws JspException {
		ServletRequest request=pageContext.getRequest();
		ServletContext application=pageContext.getServletContext();
		JspWriter out=pageContext.getOut();
		try {
			out.println("<html>");
			out.println("<head><title>Servlet Info</title></head>");
			out.println("<body>");
			out.println("<table border='0' width='450' align='center'>");
			out.println("<tr><td bgcolor='#9999cc'>");
			out.print("<h1>Servlet Version " + application.getMajorVersion());
			out.print("." + application.getMinorVersion() + "</h1>");
			out.println("</td></tr></table><br />");
			String[] aryPrp={"java.home","java.class.path","java.ext.dirs","os.name","os.version","file.separator","path.separator","user.home","user.dir"};
			out.println("<table border='0' width='450' align='center'>");
			for(int i=0;i<aryPrp.length;i++){
				out.println("<tr>");
				out.println("<th bgcolor='#CCCCFF'>" + aryPrp[i] + "</th>");
				out.println("<td bgcolor='#CCCCCC'>" + System.getProperty(aryPrp[i]) + "</td>");
				out.println("</tr>");
			}
			out.println("</table><br />");
			out.println("<hr align='center' width='300' />");
			out.println("<h2 align='center'>Header Info.</h2>");
			out.println("<table border='0' width='450' align='center'>");
			Enumeration objHdr=((HttpServletRequest)request).getHeaderNames();
			while(objHdr.hasMoreElements()){
				String strNam=(String)objHdr.nextElement();
				out.println("<tr>");
				out.println("<th bgcolor='#CCCCFF'>" + strNam + "</th>");
				out.println("<td bgcolor='#CCCCCC'>" + ((HttpServletRequest)request).getHeader(strNam) + "</td>");
				out.println("</tr>");
			}
			out.println("</table>");
			out.println("<hr align='center' width='300' />");
			out.println("<h2 align='center'>Loaded Package</h2>");
			out.println("<table border='0' width='450' align='center'>");
			Package objPkg[] = Package.getPackages();
			for(int i=0;i<objPkg.length;i++){
				out.println("<tr>");
				out.println("<td bgcolor='#CCCCCC'>" + objPkg[i].toString() + "</td>");
				out.println("</tr>");
			}
			out.println("</table>");
			out.println("</body></html>");
		} catch(Exception e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
}
