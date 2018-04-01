package tagLib;

import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class RangeValidation extends TagSupport {
	private String controlToValidate;
	private String minValue;
	private String maxValue;
	private String errorMessage;
	private String terminate;
	private boolean flag;
	public int doStartTag() throws JspException {
		flag=false;
		ServletRequest request=pageContext.getRequest();
		JspWriter out=pageContext.getOut();
		try {
			double intElm=Double.parseDouble(request.getParameter(controlToValidate));
			if(minValue != null){
				double intMin=Double.parseDouble(minValue);
				if(intElm < intMin){flag=true;}
			}
			if(maxValue != null){
				double intMax=Double.parseDouble(maxValue);
				if(intElm > intMax){flag=true;}
			}
			if(flag){out.println(errorMessage);}
		} catch (NumberFormatException e) {
			try {
				out.println(errorMessage);
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
	public void setMinValue(String minValue){
		this.minValue=minValue;
	}
	public void setMaxValue(String maxValue){
		this.maxValue=maxValue;
	}
	public void setErrorMessage(String errorMessage){
		this.errorMessage=errorMessage;
	}
	public void setTerminate(String terminate){
		this.terminate=terminate;
	}
}
