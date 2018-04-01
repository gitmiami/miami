package dictionary;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WordRegistryController extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("Shift_JIS");
		WordRegistryBeans wrbWordRegistry= new WordRegistryBeans();
		wrbWordRegistry.addDictionary(request.getParameter("WORD"),request.getParameter("KANA"),request.getParameter("MEANING"));
		response.sendRedirect("WordListController");
	}
}
