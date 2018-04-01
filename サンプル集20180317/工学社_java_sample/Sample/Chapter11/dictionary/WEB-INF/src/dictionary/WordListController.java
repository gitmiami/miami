package dictionary;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WordListController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
	    WordListBeans wlbWordList = new WordListBeans();
	    wlbWordList.setWordList();
        request.setAttribute("setWordList",wlbWordList);
        getServletConfig().getServletContext().getRequestDispatcher("/DictionaryPage.jsp").forward(request,response);
	}
}