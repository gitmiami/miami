package struts;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.struts.action.*;

public final class SearchSelect extends Action {
	public ActionForward execute(ActionMapping map, ActionForm fm, HttpServletRequest request, HttpServletResponse response) {
		ServletContext application=getServlet().getServletContext();
		String[] aryGnd={"","ÃË","½÷"};
		String[] aryPrf={"","ËÌ³¤Æ»","ÀÄ¿¹","´ä¼ê","µÜ¾ë","½©ÅÄ","»³·Á","Ê¡Åç","Åìµş","¿ÀÆàÀî","ºë¶Ì","ÀéÍÕ","°ñ¾ë","ÆÊÌÚ","·²ÇÏ","»³Íü","¿·³ã","Ä¹Ìî","ÉÙ»³","ÀĞÀî","Ê¡°æ","°¦ÃÎ","´ôÉì","ÀÅ²¬","»°½Å","Âçºå","Ê¼¸Ë","µşÅÔ","¼¢²ì","ÆàÎÉ","ÏÂ²Î»³","Ä»¼è","Åçº¬","²¬»³","¹­Åç","»³¸ı","ÆÁÅç","¹áÀî","°¦É²","¹âÃÎ","Ê¡²¬","º´²ì","Ä¹ºê","·§ËÜ","ÂçÊ¬","µÜºê","¼¯»ùÅç","²­Æì"};
		application.setAttribute("address.gender",aryGnd);
		application.setAttribute("address.prefecture",aryPrf);
		return map.findForward("right");
	}
}
