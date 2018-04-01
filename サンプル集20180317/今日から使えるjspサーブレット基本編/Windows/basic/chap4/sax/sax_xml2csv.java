package xml;

import xml.*;
import java.io.*;
import java.util.*;
import org.xml.sax.*;
import org.xml.sax.helpers.*;
import org.apache.xerces.parsers.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class sax_xml2csv extends HttpServlet {
	private HashMap objMap;
	private String cur=null;
	private FileWriter objFW;
	private BufferedWriter objBW;
	private class SaxHandler extends DefaultHandler {
		public void startDocument(){
			try {
				objBW=new BufferedWriter(objFW,10);
				objBW.write("ISBN,書名,URL,出版社,価格,発刊日");
				objBW.newLine();
			} catch (Exception e) {
				e.printStackTrace();
			}
			objMap=new HashMap();
			objMap.put("isbn",""); objMap.put("name","");
			objMap.put("url","");  objMap.put("publish","");
			objMap.put("price","");objMap.put("published","");
		}
		public void startElement(String uri, String local, String qNam, Attributes attrs){
			if(qNam.equals("book")){
				objMap.put("name","");objMap.put("publish","");
				objMap.put("url",""); objMap.put("price","");
				objMap.put("published","");
				objMap.put("isbn",attrs.getValue(0));
			}else{
				cur=qNam;
			}
		}
		public void endElement(String uri, String local, String qNam) {
			try {
				if(qNam.equals("book")){
					objBW.write(objMap.get("isbn") + ",");
					objBW.write(objMap.get("name") + ",");
					objBW.write(objMap.get("url") + ",");
					objBW.write(objMap.get("publish") + ",");
					objBW.write(objMap.get("price") + ",");
					objBW.write(objMap.get("published") + "");
					objBW.newLine();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		public void characters(char chr[], int start, int len) {
			String strTmp=new String(chr,start,len);
			objMap.put(cur,strTmp);
			cur="";
		}
		public void endDocument(){
			try {
				objBW.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		ServletContext application=getServletConfig().getServletContext();
		try {
			objFW=new FileWriter(application.getRealPath("data/xml/result.csv"));
			FileReader objFR=new FileReader(application.getRealPath("data/xml/books.xml"));
			BufferedReader objBR=new BufferedReader(objFR);
			InputSource objSrc=new InputSource(objBR);
			SaxHandler objHnd=new SaxHandler();
			XMLReader objPrs=new SAXParser();
			objPrs.setContentHandler(objHnd);
			objPrs.parse(objSrc);
			objFW.close();
			response.setContentType("text/html;charset=Shift_JIS");
			PrintWriter out=response.getWriter();
			out.println("<html><head><title>XML→CSVへの変換</title></head><body>");
			out.println("XML文書をCSV形式（data/xml/result.csv）に変換しました");
			out.println("</body></html>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
