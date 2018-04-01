package dictionary;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WordDeleteController extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		WordDeleteBeans wdbWordDelete= new WordDeleteBeans();
		wdbWordDelete.deleteDictionary(Integer.parseInt(request.getParameter("wordid")));
		response.sendRedirect("WordListController");
	}
}
