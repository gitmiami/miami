package noticeboard;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author �֐���w�������w���@�c��������
 */
public class NoticeBoardListController extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		NoticeBoardListBeans nblNoticeBoardList= new NoticeBoardListBeans();
		nblNoticeBoardList.setNoticeBoardList();
		request.setAttribute("setNoticeBoardList",nblNoticeBoardList);
		getServletConfig().getServletContext().getRequestDispatcher("/NoticeBoardPage.jsp").forward(request,response);
	}
}