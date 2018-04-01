package filter;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class responseWrapper extends HttpServletResponseWrapper {
	StringWriter objStr=null;
	PrintWriter  objPrt=null;
	public responseWrapper(HttpServletResponse response) throws IOException {
		super(response);
		objStr=new StringWriter();
		objPrt=new PrintWriter(objStr);
	}
	public PrintWriter getWriter(){return objPrt;}
	public void setContentType(String strType) {}
}