package tagLib;

import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class ValidationUp extends TagSupport {
	private String controlToValidate;
	private String errorMessage;
	private boolean flag;
	public int doStartTag() throws JspException {
		ServletRequest request=pageContext.getRequest();
		JspWriter out=pageContext.getOut();
		flag=false;
		try {
			String strElm=request.getParameter(controlToValidate);
			if(strElm.equals("")){flag=true;}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
	public int doEndTag() throws JspException {
		pageContext.setAttribute(getId(),this);
		return EVAL_PAGE;
	}
	public void setControlToValidate(String controlToValidate){
		this.controlToValidate=controlToValidate;
	}
	public void setErrorMessage(String errorMessage){
		this.errorMessage=errorMessage;
	}
	public String getErrorMessage(){
		if(flag){
			return errorMessage;
		}else{
			return "";
		}
	}
	public boolean getFlag() {return flag;}
}
