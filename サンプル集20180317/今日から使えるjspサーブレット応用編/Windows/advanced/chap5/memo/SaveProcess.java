package struts;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.struts.action.*;

public final class SaveProcess extends Action {
	public ActionForward execute(ActionMapping map, ActionForm fm, HttpServletRequest request, HttpServletResponse response) {
		ServletContext application=getServlet().getServletContext();
		SaveForm objFrm=(SaveForm)fm;
		try {
			FileWriter objFW=new FileWriter(application.getRealPath("chap5/memo/doc/" + objFrm.getDoc()),false);
			BufferedWriter objBR=new BufferedWriter(objFW,10);
			objBR.write(objFrm.getMemo());
			objBR.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return map.findForward("right");
	}
}
