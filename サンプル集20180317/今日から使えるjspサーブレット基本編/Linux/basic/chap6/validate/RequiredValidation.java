package tagLib;

import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class RequiredValidation extends TagSupport {
	private String controlToValidate;
	private String errorMessage;
	private String terminate;
	private boolean flag;
	public int doStartTag() throws JspException {
		ServletRequest request=pageContext.getRequest();
		JspWriter out=pageContext.getOut();
		flag=false;
		try {
			String strElm=request.getParameter(controlToValidate);
			if(strElm.equals("")){
				out.println(errorMessage);
				flag=true;
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
	public void setErrorMessage(String errorMessage){
		this.errorMessage=errorMessage;
	}
	public void setTerminate(String terminate){
		this.terminate=terminate;
	}
}
