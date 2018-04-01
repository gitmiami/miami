package xml;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.xml.transform.*;
import javax.xml.transform.stream.*;

public class disp_update extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		ServletContext application=getServletConfig().getServletContext();
		response.setContentType("text/html; charset=Shift_JIS");
		PrintWriter out=response.getWriter();
		String strXml,strXsl; 
		strXml=application.getRealPath("data/xml/books.xml");
		strXsl=application.getRealPath("chap4/xml/update.xsl");
		try {
			StreamSource objXmlSS=new StreamSource(strXml);
			StreamSource objXslSS=new StreamSource(strXsl);
			StreamResult objOutSR=new StreamResult(out);
			TransformerFactory objFac=TransformerFactory.newInstance();
			Transformer objTrn=objFac.newTransformer(objXslSS);
			objTrn.transform(objXmlSS,objOutSR);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		doGet(request,response);
	}
}
