package struts;

import beanYama.*;
import java.io.*;
import java.text.*;
import java.util.*;
import java.util.regex.*;
import javax.servlet.http.*;
import org.apache.struts.action.*;

public final class SubmitForm extends ActionForm {
	private String flag;
	private String id;
	private String nam;
	private String gender;
	private String birth;
	private String address;
	private String tel;
	private String email;
	private String sbm;
	private String del;
	public void setFlag(String flag)      {this.flag=flag;}
	public void setId(String id)          {this.id=id;}
	public void setNam(String nam)        {this.nam=nam;}
	public void setGender(String gender)  {this.gender=gender;}
	public void setBirth(String birth)    {this.birth=birth;}
	public void setAddress(String address){this.address=address;}
	public void setTel(String tel)        {this.tel=tel;}
	public void setEmail(String email)    {this.email=email;}
	public void setSbm(String sbm)        {this.sbm=sbm;}
	public void setDel(String del)        {this.del=del;}
	public String getFlag()   {return flag;}
	public String getId()     {return id;}
	public String getNam()    {return nam;}
	public String getGender() {return gender;}
	public String getBirth()  {return birth;}
	public String getAddress(){return address;}
	public String getTel()    {return tel;}
	public String getEmail()  {return email;}
	public String getSbm()    {return sbm;}
	public String getDel()    {return del;}
	public ActionErrors validate (ActionMapping map, HttpServletRequest request){
		ActionErrors objErr=new ActionErrors();
		if(nam==null || nam.equals("")){
			objErr.add("nam",new ActionError("errors.required","名前"));
		}
		if(nam!=null && nam.length()>10){
			objErr.add("nam_l",new ActionError("errors.maxlength","名前","10"));
		}
		if(gender==null || gender.equals("")){
			objErr.add("gender",new ActionError("errors.required","性別"));
		}
		if(birth==null || birth.equals("")){
			objErr.add("birth",new ActionError("errors.required","生年月日"));
		}
		try {
			if(birth!=null && !birth.equals("")){
				DateFormat objFmt=DateFormat.getDateInstance(DateFormat.SHORT);
				Date objDat=objFmt.parse(birth);
			}
		} catch (ParseException e) {
			objErr.add("birth",new ActionError("errors.date","生年月日"));
		}
		if(address==null || address.equals("")){
			objErr.add("address",new ActionError("errors.required","住所"));
		}
		if(address!=null && address.length()>50){
			objErr.add("address_l",new ActionError("errors.maxlength","住所","50"));
		}
		if(tel==null || tel.equals("")){
			objErr.add("tel",new ActionError("errors.required","電話番号"));
		}
		if(tel!=null && tel.length()>20){
			objErr.add("tel_l",new ActionError("errors.maxlength","電話番号","20"));
		}
		try {
			if(tel.getBytes("EUC-JP").length!=tel.length()){
				objErr.add("tel_z",new ActionError("errors.ZenHan","電話番号"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(email==null || email.equals("")){
			objErr.add("email",new ActionError("errors.required","E-Mail"));
		}
		if(email!=null && email.length()>50){
			objErr.add("email_l",new ActionError("errors.maxlength","E-Mail","50"));
		}
		try {
			if(email.getBytes("EUC-JP").length!=email.length()){
				objErr.add("email_z",new ActionError("errors.ZenHan","E-Mail"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(email!=null && !email.equals("")){
			Pattern objPtn=Pattern.compile("^[\\w]+[\\w\\.\\-]+@[\\w]+[\\w\\.\\-]+[\\w]+$",Pattern.CASE_INSENSITIVE);
			Matcher objMch=objPtn.matcher(email);
			if(!objMch.find()){
				objErr.add("email_reg",new ActionError("errors.email"));
			}
		}
		return objErr;
	}
	public void reset(ActionMapping map,HttpServletRequest request){
		HttpSession session=request.getSession();
		try {
			request.setCharacterEncoding("EUC-JP");
		} catch (Exception e) {
			e.printStackTrace();
		}
		flag=   (String)session.getAttribute("address.data.flag");
		id=     (String)request.getAttribute("address.data.id");
		nam=    (String)request.getAttribute("address.data.nam");
		gender= (String)request.getAttribute("address.data.gender");
		address=(String)request.getAttribute("address.data.address");
		tel=    (String)request.getAttribute("address.data.tel");
		email=  (String)request.getAttribute("address.data.email");
		Date dteBirth=(Date)request.getAttribute("address.data.birth");
		if(dteBirth==null){
			birth="";
		}else{
			birth=EncodeUtil.formatDate("yyyy/MM/dd",dteBirth);
		}
	}
}
