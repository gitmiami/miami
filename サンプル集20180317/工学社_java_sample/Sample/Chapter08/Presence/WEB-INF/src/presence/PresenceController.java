package presence;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class PresenceController extends HttpServlet {

	String pageName = "";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("Shift_JIS");
		PresenceBeans prebean = new PresenceBeans();		
		String uID = null;
		HttpSession session = request.getSession(false);
		
		if (session != null){
			LoginBeans user_info = (LoginBeans)session.getAttribute("user_info");
			uID = user_info.getUserId();
		}

		if (uID == null){
			session.invalidate();
			pageName = "Login.jsp";			
		}else{
			String userId = uID;
			String presence = request.getParameter("PRE");
				
			if ((presence == null) || (presence.equals(""))){
				String schedule = request.getParameter("SCHEDULE");
				prebean.setUserId(userId);
				prebean.setSchedule(schedule);
				prebean.insertSchedule();
				pageName = "MainPresence.jsp";
			}else{
				int scheduleId = Integer.parseInt(request.getParameter("ID"));
				prebean.setUserId(userId);
				prebean.setScheduleId(scheduleId);
				prebean.setPre(presence);
				prebean.preUpdate();
				pageName = "MainPresence.jsp";
			}
			getServletConfig().getServletContext().getRequestDispatcher("/" + pageName).forward(request,response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		if (session != null){
			if (request.getParameter("ID") != null){
				int scheduleId = Integer.parseInt(request.getParameter("ID"));
				pageName = "PresenceSelect.jsp";
			}else{
				pageName = "NewSchedule.jsp";
			}
		}else{
			session.invalidate();
			pageName = "Login.jsp";
		}
		getServletConfig().getServletContext().getRequestDispatcher("/" + pageName).forward(request,response);
	}
}