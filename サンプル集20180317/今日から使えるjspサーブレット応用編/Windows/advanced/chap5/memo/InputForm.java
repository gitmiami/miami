package struts;

import java.io.*;
import org.apache.struts.action.*;

public final class InputForm extends ActionForm {
	private String doc;
	private String newDoc;
	private String proc;
	public void setDoc(String doc)      {this.doc=doc;}
	public void setNewDoc(String newDoc){this.newDoc=newDoc;}
	public void setProc(String proc)    {this.proc=proc;}
	public String getDoc()   {return doc;}
	public String getNewDoc(){return newDoc;}
	public String getProc()  {return proc;}
}
