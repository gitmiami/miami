package struts;

import java.io.*;
import org.apache.struts.action.*;

public final class SearchForm extends ActionForm {
	private String nam;
	private String gender;
	private String prefecture;
	public void setNam(String nam){this.nam=nam;}
	public void setGender(String gender){this.gender=gender;}
	public void setPrefecture(String prefecture){this.prefecture=prefecture;}
	public String getNam()       {return nam;}
	public String getGender()    {return gender;}
	public String getPrefecture(){return prefecture;}
}
