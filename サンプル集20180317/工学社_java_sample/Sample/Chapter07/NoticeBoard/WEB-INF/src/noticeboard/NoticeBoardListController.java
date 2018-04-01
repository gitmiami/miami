package noticeboard;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 関西大学総合情報学部　田中研究室
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