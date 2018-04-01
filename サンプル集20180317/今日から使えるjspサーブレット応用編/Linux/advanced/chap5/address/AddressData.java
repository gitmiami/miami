package struts;

import beanYama.*;
import java.io.*;
import java.util.*;
import java.text.*;

public class AddressData implements Serializable {
	private String id=null;
	private String nam=null;
	private String gender=null;
	private Date   birth=null;
	private String address=null;
	private String tel=null;
	private String email=null;
	public void setId(String id)          {this.id=id;}
	public void setNam(String nam)        {this.nam=nam;}
	public void setGender(String gender)  {this.gender=gender;}
	public void setBirth(Date birth)      {this.birth=birth;}
	public void setAddress(String address){this.address=address;}
	public void setTel(String tel)        {this.tel=tel;}
	public void setEmail(String email)    {this.email=email;}
	public String getId()    {return id;}
	public String getNam()   {return nam;}
	public String getGender(){return gender;}
	public String getBirth() {
		return EncodeUtil.formatDate("yyyyÇ¯MM·îddÆü",birth);
	}
	public String getAddress(){return address;}
	public String getTel()   {return tel;}
	public String getEmail() {return email;}
}
