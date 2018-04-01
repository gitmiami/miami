package tagLib;

import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class ReqValidation extends TagSupport {
	private String controlToValidate;
	private String errorMessage;
	public int doStartTag() throws JspException {
		ServletRequest request=pageContext.getRequest();
		JspWriter out=pageContext.getOut();
		SummaryValidation objVal=(SummaryValidation)findAncestorWithClass(this,tagLib.SummaryValidation.class);
		try {
			String strElm=request.getParameter(controlToValidate);
			if(strElm.equals("")){
				objVal.setFlag(true);
				objVal.setErrMsg(errorMessage);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
	public void setControlToValidate(String controlToValidate){
		this.controlToValidate=controlToValidate;
	}
	public void setErrorMessage(String errorMessage){
		this.errorMessage=errorMessage;
	}
}
