package mvc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class LoginController extends HttpServlet {

	protected void doPost(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("Shift_JIS");
		String userName = request.getParameter("username");
		String userPass = request.getParameter("password");
		String pageName = "";

		if(userName != null && !userName.trim().equals("") && userPass != null
		&& !userPass.trim().equals("")){
			LoginBeans logbean = new LoginBeans();
			logbean.setUsername(userName);
			logbean.setUserpass(userPass);

			if(logbean.isCorrectPass()){
				pageName = "MenuPage.jsp";
				request.setAttribute("user_info", logbean);
			}else{
				pageName ="ErrorPage.jsp";
			}
		}else{
			String newUserName = request.getParameter("newuser");
			String newUserPass = request.getParameter("newpass");

			if(newUserName != null && !newUserName.trim().equals("") && newUserPass != null
			&& !newUserPass.trim().equals("")){
				LoginBeans newlogbean = new LoginBeans();
				newlogbean.setUsername(newUserName);
				newlogbean.setUserpass(newUserPass);
				newlogbean.registerUser();
				pageName = "Registered.jsp";
			}else{
				pageName = "LoginForm.jsp";
			}
		}
			getServletConfig().getServletContext().getRequestDispatcher("/" + pageName)
			.forward(request,response);
	}

	protected void doGet(HttpServletRequest request,
	HttpServletResponse response) throws ServletException, IOException {
		getServletConfig().getServletContext().getRequestDispatcher("/LoginForm.jsp")
		.forward(request,response);
	}
}
