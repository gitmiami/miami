package struts;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import org.apache.struts.action.*;

public final class SearchSelect extends Action {
	public ActionForward execute(ActionMapping map, ActionForm fm, HttpServletRequest request, HttpServletResponse response) {
		ServletContext application=getServlet().getServletContext();
		String[] aryGnd={"","男","女"};
		String[] aryPrf={"","北海道","青森","岩手","宮城","秋田","山形","福島","東京","神奈川","埼玉","千葉","茨城","栃木","群馬","山梨","新潟","長野","富山","石川","福井","愛知","岐阜","静岡","三重","大阪","兵庫","京都","滋賀","奈良","和歌山","鳥取","島根","岡山","広島","山口","徳島","香川","愛媛","高知","福岡","佐賀","長崎","熊本","大分","宮崎","鹿児島","沖縄"};
		application.setAttribute("address.gender",aryGnd);
		application.setAttribute("address.prefecture",aryPrf);
		return map.findForward("right");
	}
}
