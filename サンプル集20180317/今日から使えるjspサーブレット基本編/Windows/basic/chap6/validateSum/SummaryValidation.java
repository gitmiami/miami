package tagLib;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class SummaryValidation extends BodyTagSupport {
	private String leadMsg;
	private String errMsg="";
	private String terminate;
	private boolean flag=false;
	public int doStartTag() throws JspException {
		return EVAL_BODY_BUFFERED;
	}
	public int doEndTag() throws JspException {
		JspWriter out=pageContext.getOut();
		try {
			if(flag){
				out.print("<script language='JavaScript'>");
				out.print("window.alert('" + leadMsg + "\\r"+ errMsg + "')");
				out.print("</script>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(terminate.equals("true")){
			return SKIP_PAGE;
		}else{
			return EVAL_PAGE;
		}
	}
	public void setLeadMsg(String leadMsg){
		this.leadMsg=leadMsg;
	}
	public void setErrMsg(String errMsg){
		this.errMsg += "  -" + errMsg + "\\r";
	}
	public void setTerminate(String terminate){
		this.terminate=terminate;
	}
	public void setFlag(boolean flag) {
		this.flag=flag;
	}
}