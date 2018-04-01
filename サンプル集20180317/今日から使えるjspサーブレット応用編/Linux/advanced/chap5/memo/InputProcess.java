package struts;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.struts.action.*;

public final class InputProcess extends Action {
	public ActionForward execute(ActionMapping map, ActionForm fm, HttpServletRequest request, HttpServletResponse response) {
		StringBuffer objSB=new StringBuffer();
		ServletContext application=getServlet().getServletContext();
		InputForm objFrm=(InputForm)fm;
		String strTmp;
		try {
			strTmp=application.getRealPath("chap5/memo/doc/" + objFrm.getDoc());
			File objFle=new File(strTmp);
			switch(objFrm.getProc().charAt(0)){
				case 'ÆÉ' :
					if(objFle.exists()){
						FileReader objFR=new FileReader(strTmp);
						BufferedReader objBR=new BufferedReader(objFR);
						while(objBR.ready()){
							objSB.append(objBR.readLine());
							objSB.append(System.getProperty("line.separator"));
						}
						objBR.close();
						request.setAttribute("memo.doc",objSB.toString());
						request.setAttribute("memo.docFile",objFrm.getDoc());
					}
					break;
				case 'Ê¸' :
					if(objFle.exists()){
						objFle.delete();
					}
					request.setAttribute("memo.flag","delProcess");
					break;
				case '¿·' :
					strTmp=application.getRealPath("chap5/memo/doc/" + objFrm.getNewDoc());
					objFle=new File(strTmp);
					if(!objFle.exists()){
						objFle.createNewFile();
						objSB.append("");
						request.setAttribute("memo.docFile",objFrm.getNewDoc());
					}else{
						request.setAttribute("memo.flag","newError");
					}
					break;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map.findForward("right");
	}
}
