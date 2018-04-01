package struts;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.struts.action.*;

public final class SearchSelect extends Action {
	public ActionForward execute(ActionMapping map, ActionForm fm, HttpServletRequest request, HttpServletResponse response) {
		ServletContext application=getServlet().getServletContext();
		String[] aryGnd={"","��","��"};
		String[] aryPrf={"","�̳�ƻ","�Ŀ�","���","�ܾ�","����","����","ʡ��","���","������","���","����","���","����","����","����","����","Ĺ��","�ٻ�","����","ʡ��","����","����","�Ų�","����","���","ʼ��","����","����","����","�²λ�","Ļ��","�纬","����","����","����","����","����","��ɲ","����","ʡ��","����","Ĺ��","����","��ʬ","�ܺ�","������","����"};
		application.setAttribute("address.gender",aryGnd);
		application.setAttribute("address.prefecture",aryPrf);
		return map.findForward("right");
	}
}
