package beanYama;

import java.io.*;
import java.util.*;

public class BeanEncode implements Serializable {
	static public String strEncode(String strVal) throws UnsupportedEncodingException{
		if(strVal==null){
			return (null);
		}else{
			return (new String(strVal.getBytes("ISO-8859-1"),"JISAutoDetect"));
		}
	}
	static public String htmlEncode(String strVal){
		StringBuffer strResult=new StringBuffer();
		for(int i=0;i<strVal.length();i++){
			switch(strVal.charAt(i)){
				case '&' :
					strResult.append("&amp;");
					break;
				case '<' :
					strResult.append("&lt;");
					break;
				case '>' :
					strResult.append("&gt;");
					break;
				case '\t' :
					strResult.append("&nbsp;&nbsp;&nbsp;&nbsp;");
					break;
				default :
					strResult.append(strVal.charAt(i));
					break;
			}
		}
		return strResult.toString();
	}
}