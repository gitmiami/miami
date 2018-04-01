package tagLib;

import java.util.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class CompareValidation extends TagSupport {
	private String controlToValidate;
	private String controlToCompare;
	private String dataType;
	private String operator;
	private String errorMessage;
	private String terminate;
	private boolean flag;
	public int doStartTag() throws JspException {
		ServletRequest request=pageContext.getRequest();
		JspWriter out=pageContext.getOut();
		flag=false;
		try {
			String strCtr1=request.getParameter(controlToValidate);
			String strCtr2=request.getParameter(controlToCompare);
			if(strCtr1!=null && strCtr2!=null && !strCtr1.equals("") && !strCtr2.equals("")){
				if(dataType.equals("number")){
					double dblElm1=Double.parseDouble(strCtr1);
					double dblElm2=Double.parseDouble(strCtr2);
					if(operator.equals("less")){
						if(dblElm1>dblElm2){out.println(errorMessage);flag=true;}
					}else{
						if(dblElm1<dblElm2){out.println(errorMessage);flag=true;}
					}
				}
				if(dataType.equals("dateTime")){
					DateFormat objDF=DateFormat.getDateInstance(DateFormat.SHORT);
					Date dteElm1=objDF.parse(strCtr1);
					Date dteElm2=objDF.parse(strCtr2);
					if(operator.equals("less")){
						if(dteElm1.after(dteElm2)){out.println(errorMessage);flag=true;}
					}else{
						if(dteElm1.before(dteElm2)){out.println(errorMessage);flag=true;}
					}
				}
			}
		} catch (NumberFormatException e) {
			try {
				out.println("数値は0から9の間、半角で入力してください");
				flag=true;
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		} catch (ParseException e) {
			try {
				out.println("日付はYYYY/MM/DDの形式で入力してください");
				flag=true;
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
	public int doEndTag() throws JspException {
		if(terminate.equals("true") && flag){
			return SKIP_PAGE;
		}else{
			return EVAL_PAGE;
		}
	}
	public void setControlToValidate(String controlToValidate){
		this.controlToValidate=controlToValidate;
	}
	public void setControlToCompare(String controlToCompare){
		this.controlToCompare=controlToCompare;
	}
	public void setDataType(String dataType){
		this.dataType=dataType;
	}
	public void setOperator(String operator){
		this.operator=operator;
	}
	public void setErrorMessage(String errorMessage){
		this.errorMessage=errorMessage;
	}
	public void setTerminate(String terminate){
		this.terminate=terminate;
	}
}
