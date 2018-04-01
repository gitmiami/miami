package tagLib;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class ValidationUpS extends TagExtraInfo {
	public VariableInfo[] getVariableInfo(TagData dat) {
		VariableInfo[] aryInf={new VariableInfo(dat.getId(),"tagLib.ValidationUp",true,VariableInfo.AT_END)};
		return aryInf;
	}
}
