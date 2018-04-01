package tagLib;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class File2Table extends BodyTagSupport {
	private int loop;
	private String path;
	private String header;
	private String headerColor;
	private ArrayList aryLst;
	private ArrayList aryRow;
	public int doStartTag() throws JspException {
		ServletContext application=pageContext.getServletContext();
		JspWriter out=pageContext.getOut();
		try {
			FileReader objFR=new FileReader(application.getRealPath(path));
			BufferedReader objBR=new BufferedReader(objFR);
			aryLst=new ArrayList();
			while(objBR.ready()){
				aryLst.add(objBR.readLine());
			}
			objBR.close();
			out.println("<table border='1'>");
			if(header!=null){
				StringTokenizer objTkn=new StringTokenizer(header,",");
				out.println("<tr bgcolor='" + headerColor + "'>");
				while(objTkn.hasMoreTokens()){
					out.println("<th>" + (String)objTkn.nextToken() + "</th>");
				}
				out.println("</tr>");
			}
			String strTmp=(String)aryLst.get(loop);
			StringTokenizer objTkn=new StringTokenizer(strTmp,"\t");
			aryRow=new ArrayList();
			while(objTkn.hasMoreTokens()){
				aryRow.add(objTkn.nextToken());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return EVAL_BODY_INCLUDE;
	}
	public int doAfterBody() throws JspException {
		JspWriter out=pageContext.getOut();
		try {
			loop++;
			if(loop<aryLst.size()){
				String strTmp=(String)aryLst.get(loop);
				StringTokenizer objTkn=new StringTokenizer(strTmp,"\t");
				aryRow=new ArrayList();
				while(objTkn.hasMoreTokens()){
					aryRow.add(objTkn.nextToken());
				}
				return EVAL_BODY_AGAIN;
			}else{
				out.println("</table>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
	public void setPath(String path){
		this.path=path;
	}
	public void setHeader(String header){
		this.header=header;
	}
	public void setHeaderColor(String headerColor){
		this.headerColor=headerColor;
	}
	public String getField(int index){
		return (String)aryRow.get(index);
	}
}
