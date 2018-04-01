package struts;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.struts.action.*;

public final class SelectDoc extends Action {
	public ActionForward execute(ActionMapping map, ActionForm fm, HttpServletRequest request, HttpServletResponse response) {
		ServletContext application=getServlet().getServletContext();
		ArrayList objAry=new ArrayList();
		File fl=new File(application.getRealPath("chap5/memo/doc"));
		File[] aryFls=fl.listFiles();
		for(int i=0;i<aryFls.length;i++){objAry.add(aryFls[i].getName());}
		request.setAttribute("memo.docName",objAry.toArray());
		return map.findForward("right");
	}
}
