package struts;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.struts.action.*;

public final class SaveForm extends ActionForm {
	private String memo;
	private String doc;
	public void setMemo(String memo){this.memo=memo;}
	public void setDoc(String doc)  {this.doc=doc;}
	public String getMemo(){return memo;}
	public String getDoc() {return doc;}
	public void reset(ActionMapping map, HttpServletRequest request){
		memo=(String)request.getAttribute("memo.doc");
		doc =(String)request.getAttribute("memo.docFile");
	}
}
