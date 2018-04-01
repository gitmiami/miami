package struts;

import java.io.*;
import org.apache.struts.action.*;

public final class UpdateForm extends ActionForm {
	private String id;
	private String flag;
	public void setId(String id)    {this.id=id;}
	public void setFlag(String flag){this.flag=flag;}
	public String getId()  {return id;}
	public String getFlag(){return flag;}
}
