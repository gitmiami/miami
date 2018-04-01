package xml;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.xml.transform.*;
import javax.xml.transform.stream.*;

public class srv_xslt extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		ServletContext application=getServletConfig().getServletContext();
		response.setContentType("text/html; charset=EUC-JP");
		PrintWriter out=response.getWriter();
		String strXml,strXsl;
		strXml=application.getRealPath("data/xml/books.xml");
		if(request.getHeader("user-agent").indexOf("DoCoMo")==-1){
			strXsl=application.getRealPath("data/xml/table.xsl");
		}else{
			strXsl=application.getRealPath("data/xml/simple.xsl");
		}
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
