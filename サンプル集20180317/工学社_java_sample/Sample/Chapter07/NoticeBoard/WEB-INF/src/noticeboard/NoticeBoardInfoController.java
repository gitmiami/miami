package noticeboard;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class NoticeBoardInfoController extends HttpServlet {
	
    public void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
		request.setCharacterEncoding("Shift_JIS");
		NoticeBoardListBeans nblNoticeBoardList= new NoticeBoardListBeans();
		nblNoticeBoardList.addNoticeBoardInfo(request.getParameter("name"), request.getParameter("title"),request.getParameter("text"));
		response.sendRedirect("NoticeBoardListController");
	}
}