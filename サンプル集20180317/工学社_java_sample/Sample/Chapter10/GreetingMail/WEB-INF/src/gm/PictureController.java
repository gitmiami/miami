package gm;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author �֐���w�������w���@�c��������
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