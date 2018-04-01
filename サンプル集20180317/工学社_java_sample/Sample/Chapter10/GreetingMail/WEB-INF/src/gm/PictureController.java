package gm;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class PictureController extends HttpServlet {
	
	public void doGet (HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {
		PictureListBeans pl = new PictureListBeans();
		pl.setPictureList();
		request.setAttribute("pl", pl);
		getServletConfig().getServletContext().getRequestDispatcher("/SelectPicture.jsp")
		.forward(request, response);
	}
}