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
public class LoginController extends HttpServlet {

	String pageName = "";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("Shift_JIS");
		String userId = request.getParameter("userID");
		String userPass = request.getParameter("password");

		if (userId != null && !userId.trim().equals("") && userPass != null && !userPass.trim().equals("")){
			LoginBeans logbean = new LoginBeans();
			logbean.setUserId(userId);
			logbean.setUserPass(userPass);			
			if (logbean.isCorrectPass()){
				pageName = "MainPresence.jsp";
				HttpSession session = request.getSession(true);
				session.setAttribute("user_info", logbean);
			}else{
				pageName = "Login.jsp";
			}
		}else{
			pageName = "Login.jsp";
		}
		getServletConfig().getServletContext().getRequestDispatcher
		("/" + pageName).forward(request,response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		session.invalidate();
		pageName = "Login.jsp";
		getServletConfig().getServletContext().getRequestDispatcher("/" + pageName).forward(request,response);
	}
}