package xml;

import java.io.*;
import org.xml.sax.*;
import org.w3c.dom.*;
import org.apache.xerces.dom.*;
import org.apache.xerces.parsers.*;
import org.apache.xml.serialize.*;

public class book_bean implements Serializable {
	public void setBookInfo(String xmlFile, String isbn, String nam, String url, String publish, String price,String published){
		try {
			FileReader objFR=new FileReader(xmlFile);
			BufferedReader objBR=new BufferedReader(objFR);
			InputSource objSrc=new InputSource(objBR);
			DOMParser objPrs=new DOMParser();
			objPrs.parse(objSrc);
			Document objDoc=objPrs.getDocument();
			Element elmBook     =objDoc.createElement("book");
			Element elmName     =objDoc.createElement("name");
			Element elmUrl      =objDoc.createElement("url");
			Element elmPublish  =objDoc.createElement("publish");
			Element elmPrice    =objDoc.createElement("price");
			Element elmPublished=objDoc.createElement("published");
			Text txtName        =objDoc.createTextNode(nam);
			Text txtUrl         =objDoc.createTextNode(url);
			Text txtPublish     =objDoc.createTextNode(publish);
			Text txtPrice       =objDoc.createTextNode(price);
			Text txtPublished   =objDoc.createTextNode(published);
			Attr atrIsbn        =objDoc.createAttribute("isbn");
			elmName.appendChild(txtName);
			elmUrl.appendChild(txtUrl);
			elmPublish.appendChild(txtPublish);
			elmPrice.appendChild(txtPrice);
			elmPublished.appendChild(txtPublished);
			atrIsbn.setValue(isbn);
			elmBook.appendChild(elmName);
			elmBook.appendChild(elmUrl);
			elmBook.appendChild(elmPublish);
			elmBook.appendChild(elmPrice);
			elmBook.appendChild(elmPublished);
			elmBook.setAttributeNode(atrIsbn);
			objDoc.getDocumentElement().appendChild(elmBook);
			OutputFormat objOF=new OutputFormat(objDoc);
			objOF.setEncoding("EUC-JP");
			FileWriter objFW=new FileWriter(xmlFile);
			BufferedWriter objBW=new BufferedWriter(objFW,10);
			XMLSerializer objXS=new XMLSerializer(objBW,objOF);
			objXS.asDOMSerializer();
			objXS.serialize(objDoc.getDocumentElement());
			objBW.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public String getBookInfo(String xmlFile, String isbn, String nam, String publish, String price){
		StringBuffer objSB=new StringBuffer();
		try {
			FileReader objFR=new FileReader(xmlFile);
			BufferedReader objBR=new BufferedReader(objFR);
			InputSource objSrc=new InputSource(objBR);
			DOMParser objPrs=new DOMParser();
			objPrs.parse(objSrc);
			Document objDoc=objPrs.getDocument();
			Element objRoot=objDoc.getDocumentElement();
			NodeList clnBook=objDoc.getElementsByTagName("book");
			for(int i=0;i<clnBook.getLength();i++){
				boolean flag=true;
				Element objBook=(Element)clnBook.item(i);
				Node objNam=objBook.getElementsByTagName("name").item(0);
				Node objUrl=objBook.getElementsByTagName("url").item(0);
				Node objPub=objBook.getElementsByTagName("publish").item(0);
				Node objPrc=objBook.getElementsByTagName("price").item(0);
				Node objDat=objBook.getElementsByTagName("published").item(0);
				String strIsbn=objBook.getAttribute("isbn");
				String strNam=objNam.getFirstChild().getNodeValue();
				String strUrl=objUrl.getFirstChild().getNodeValue();
				String strPub=objPub.getFirstChild().getNodeValue();
				int intPrc=Integer.parseInt(objPrc.getFirstChild().getNodeValue());
				String strDat=objDat.getFirstChild().getNodeValue();
				if(isbn!=null && !isbn.equals("")){
					if(!strIsbn.equals(isbn)){flag=false;}
				}
				if(nam!=null && !nam.equals("")){
					if(strNam.indexOf(nam)==-1){flag=false;}
				}
				if(publish!=null && !publish.equals("")){
					if(!strPub.equals(publish)){flag=false;}
				}
				if(price!=null && !price.equals("")){
					if(intPrc<Integer.parseInt(price)){flag=false;}
				}
				if(flag){
					objSB.append("<tr>");
					objSB.append("<td>" + strIsbn + "</td>");
					objSB.append("<td><a href='" + strUrl + "'>");
					objSB.append(strNam + "</a></td>");
					objSB.append("<td>" + strPub + "</td>");
					objSB.append("<td>" + intPrc + "</td>");
					objSB.append("<td>" + strDat + "</td>");
					objSB.append("</tr>");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return objSB.toString();
	}
	public void updateBookInfo(String xmlFile, String isbn, String nam, String url, String publish, String price,String published){
		try {
			FileReader objFR=new FileReader(xmlFile);
			BufferedReader objBR=new BufferedReader(objFR);
			InputSource objSrc=new InputSource(objBR);
			DOMParser objPrs=new DOMParser();
			objPrs.parse(objSrc);
			Document objDoc=objPrs.getDocument();
			Element elmBook     =objDoc.createElement("book");
			Element elmName     =objDoc.createElement("name");
			Element elmUrl      =objDoc.createElement("url");
			Element elmPublish  =objDoc.createElement("publish");
			Element elmPrice    =objDoc.createElement("price");
			Element elmPublished=objDoc.createElement("published");
			Text txtName        =objDoc.createTextNode(nam);
			Text txtUrl         =objDoc.createTextNode(url);
			Text txtPublish     =objDoc.createTextNode(publish);
			Text txtPrice       =objDoc.createTextNode(price);
			Text txtPublished   =objDoc.createTextNode(published);
			Attr atrIsbn        =objDoc.createAttribute("isbn");
			elmName.appendChild(txtName);
			elmUrl.appendChild(txtUrl);
			elmPublish.appendChild(txtPublish);
			elmPrice.appendChild(txtPrice);
			elmPublished.appendChild(txtPublished);
			atrIsbn.setValue(isbn);
			elmBook.appendChild(elmName);
			elmBook.appendChild(elmUrl);
			elmBook.appendChild(elmPublish);
			elmBook.appendChild(elmPrice);
			elmBook.appendChild(elmPublished);
			elmBook.setAttributeNode(atrIsbn);
			Element objRoot=objDoc.getDocumentElement();
			NodeList clnBook=objDoc.getElementsByTagName("book");
			for(int i=0;i<clnBook.getLength();i++){
				Element objBook=(Element)clnBook.item(i);
				String strIsbn=objBook.getAttribute("isbn");
				if(strIsbn.equals(isbn)){
					objRoot.replaceChild(elmBook,objBook);
				}
			}
			OutputFormat objOF=new OutputFormat(objDoc);
			objOF.setEncoding("EUC-JP");
			FileWriter objFW=new FileWriter(xmlFile);
			BufferedWriter objBW=new BufferedWriter(objFW,10);
			XMLSerializer objXS=new XMLSerializer(objBW,objOF);
			objXS.asDOMSerializer();
			objXS.serialize(objDoc.getDocumentElement());
			objBW.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void removeBookInfo(String xmlFile, String isbn){
		try {
			FileReader objFR=new FileReader(xmlFile);
			BufferedReader objBR=new BufferedReader(objFR);
			InputSource objSrc=new InputSource(objBR);
			DOMParser objPrs=new DOMParser();
			objPrs.parse(objSrc);
			Document objDoc=objPrs.getDocument();
			Element objRoot=objDoc.getDocumentElement();
			NodeList clnBook=objDoc.getElementsByTagName("book");
			for(int i=0;i<clnBook.getLength();i++){
				Element objBook=(Element)clnBook.item(i);
				String strIsbn=objBook.getAttribute("isbn");
				if(strIsbn.equals(isbn)){
					objRoot.removeChild(objBook);
				}
			}
			OutputFormat objOF=new OutputFormat(objDoc);
			objOF.setEncoding("EUC-JP");
			FileWriter objFW=new FileWriter(xmlFile);
			BufferedWriter objBW=new BufferedWriter(objFW,10);
			XMLSerializer objXS=new XMLSerializer(objBW,objOF);
			objXS.asDOMSerializer();
			objXS.serialize(objDoc.getDocumentElement());
			objBW.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
