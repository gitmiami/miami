package test_mysql;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class MenuController extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
      
		MenuListBeans ml = new MenuListBeans();
		ml.setMenuList();
		request.setAttribute("sl",ml);
		getServletConfig().getServletContext().getRequestDispatcher("/MainMenu.jsp").forward(request,response);
	}
 
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
		throws ServletException, IOException{
		
		request.setCharacterEncoding("Shift_JIS");
		MenuListBeans ml = new MenuListBeans();
		ml.updateMenu(request.getParameter("menu"),request.getParameter("day"));                   
		request.setAttribute("sl",ml);
		getServletConfig().getServletContext().getRequestDispatcher("/MainMenu.jsp").forward(request,response);
	}
}