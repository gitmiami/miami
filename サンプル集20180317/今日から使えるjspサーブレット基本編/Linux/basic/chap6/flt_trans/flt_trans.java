package filter;

import java.io.*;
import javax.xml.transform.*;
import javax.xml.transform.stream.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class flt_trans implements Filter {
	private FilterConfig config=null;
	public void init(FilterConfig conf){
		this.config=conf;
	}
	public void destroy() {}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
		response.setContentType("text/html;charset=EUC-JP");
		PrintWriter out=response.getWriter();
		ServletContext application=config.getServletContext();
		responseWrapper objWrap=new responseWrapper((HttpServletResponse)response);
		chain.doFilter(request,objWrap);
		String strTmp=objWrap.objStr.toString();
		StreamSource objXmlSS=new StreamSource(new StringReader(strTmp));
		StreamSource objXslSS=new StreamSource(application.getRealPath("chap6/flt_trans/table.xsl"));
		StreamResult objOutSR=new StreamResult(out);
		try {
			TransformerFactory objFac=TransformerFactory.newInstance();
			Transformer objTrn=objFac.newTransformer(objXslSS);
			objTrn.transform(objXmlSS,objOutSR);
		} catch (Exception e){
			e.printStackTrace();
		}
		out.close();
	}
}