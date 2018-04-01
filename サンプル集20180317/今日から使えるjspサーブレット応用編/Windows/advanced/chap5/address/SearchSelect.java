package struts;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.struts.action.*;

public final class SearchSelect extends Action {
	public ActionForward execute(ActionMapping map, ActionForm fm, HttpServletRequest request, HttpServletResponse response) {
		ServletContext application=getServlet().getServletContext();
		String[] aryGnd={"","�j","��"};
		String[] aryPrf={"","�k�C��","�X","���","�{��","�H�c","�R�`","����","����","�_�ސ�","���","��t","���","�Ȗ�","�Q�n","�R��","�V��","����","�x�R","�ΐ�","����","���m","��","�É�","�O�d","���","����","���s","����","�ޗ�","�a�̎R","����","����","���R","�L��","�R��","����","����","���Q","���m","����","����","����","�F�{","�啪","�{��","������","����"};
		application.setAttribute("address.gender",aryGnd);
		application.setAttribute("address.prefecture",aryPrf);
		return map.findForward("right");
	}
}
