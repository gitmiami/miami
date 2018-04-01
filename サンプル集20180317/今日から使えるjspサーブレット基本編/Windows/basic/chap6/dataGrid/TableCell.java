package tagLib;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class TableCell extends TagSupport {
	private String index;
	public int doStartTag() throws JspException {
		JspWriter out=pageContext.getOut();
		try {
			File2Table objF2T=(File2Table)findAncestorWithClass(this,tagLib.File2Table.class);
			out.println(objF2T.getField(Integer.parseInt(index)));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
	public void setIndex(String index){
		this.index=index;
	}
}
