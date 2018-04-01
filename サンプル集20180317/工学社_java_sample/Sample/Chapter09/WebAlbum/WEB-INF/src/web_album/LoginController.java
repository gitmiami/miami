package web_album;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author �֐���w�������w���@�c��������
 */
public class LoginController extends HttpServlet{
	
	public void doPost (HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
		
		request.setCharacterEncoding("Shift_JIS");
		DataBaseBeans db = new DataBaseBeans();
		LoginBeans log = new LoginBeans();
		AlbumBeans al = new AlbumBeans();
		al.setLogflag(request.getParameter("function"));
		response.setContentType("text/html; charset=Shift_JIS");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">");
		
		if(al.getLogflag().equals("registryform")){
			out.println("<html><head><title>�V�K�o�^���</title></head><body>");
			log.setNewUserName(request.getParameter("newuser"));
			log.setNewUserPass(request.getParameter("newpass"));
			log.register();
			
		}else if(al.getLogflag().equals("login")){
			out.println("<html><head><title>���O�C�����</title></head><body>");
			log.setUserName(request.getParameter("username"));
			log.setUserPass(request.getParameter("password"));
			log.login();
		}
		
		out.println(log.getMsg());
		
		if(log.getMsg().equals("���O�C������")){
			HttpSession session = request.getSession(true);
			session.setAttribute("s_id", log.getUserName());
			session.setAttribute("s_passwd",log.getUserPass());
			AlbumListBeans alb = new AlbumListBeans();
			alb.setAlbumList();
			session.setAttribute("alist",alb);
			getServletConfig().getServletContext().getRequestDispatcher("/Album.jsp").forward(request,response);
		}
		
		out.println("</body></html>");
	}
	
	public void doGet (HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
	
		HttpSession session = request.getSession(false);
		session.invalidate();
		getServletConfig().getServletContext().getRequestDispatcher("/Login.jsp").forward(request,response);
	}
}