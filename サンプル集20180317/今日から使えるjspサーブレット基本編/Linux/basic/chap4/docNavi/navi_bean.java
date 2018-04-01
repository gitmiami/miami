package xml;

import java.io.*;
import java.util.*;
import org.xml.sax.*;
import org.w3c.dom.*;
import org.apache.xerces.parsers.*;

public class navi_bean implements Serializable {
	public String createNaviBar(String curPath,String xml) {
		HashMap objMap=new HashMap();
		String  strNam="";
		String  strRef="";
		StringBuffer strResult=new StringBuffer();
		DOMParser objPrs=new DOMParser();
		curPath=curPath.substring(curPath.lastIndexOf("/")+1);
		try {
			FileReader objFR=new FileReader(xml);
			BufferedReader objBR=new BufferedReader(objFR);
			InputSource objSrc=new InputSource(objBR);
			objPrs.parse(objSrc);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Document objDoc=objPrs.getDocument();
		Element objRoot=objDoc.getDocumentElement();
		NodeList objLst=objRoot.getChildNodes();
		for(int i=0;i<objLst.getLength();i++){
			Node objNod=objLst.item(i);
			if(objNod.getNodeType()==Node.ELEMENT_NODE){
				Element objPag=(Element)objNod;
				objMap.put(objPag.getAttribute("id"),objPag.getAttribute("name"));
				if(objPag.getAttribute("id").equals(curPath)){
					strNam=objPag.getAttribute("name");
					strRef=objPag.getAttribute("ref");
				}
			}
		}
		StringTokenizer objTkn=new StringTokenizer(strRef," ");
		while(objTkn.hasMoreTokens()){
			String strTmp=objTkn.nextToken();
			strResult.append("¡Î<a href='" + strTmp + "'>");
			strResult.append(objMap.get(strTmp) + "</a>¡Ï¡Ã");
		}
		String strRst=strResult.toString();
		if(strRst==null || strRst.equals("")){
			return "";
		}else{
			return strRst.substring(0,strRst.length()-1);
		}
	}
}
