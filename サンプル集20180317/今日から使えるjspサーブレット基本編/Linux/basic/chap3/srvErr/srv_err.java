import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class srv_err extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		ServletContext application=getServletConfig().getServletContext();
		response.setContentType("text/html;charset=EUC-JP");
		PrintWriter out=response.getWriter();
		out.println("<html><head>");
		out.println("<title>当画面において、エラーが発生しました</title>");
		out.println("</head><body>");
		out.println("<h1>エラーが発生しました</h1>");
		out.println("<p>現在の画面において、致命的なエラーが発生しました。<br />");
		out.println("しばらくおいてもエラーが改善されない場合には、");
		out.println("本画面のキャプチャを添付の上、ヘルプデスクまで");
		out.println("ご連絡ください</p>");
		out.println("<hr />");
		out.println("<table border='8'>");
		out.println("<tr><td style='background:#ffffcc'><pre>");
		out.println("<h3>" + request.getAttribute("javax.servlet.error.request_uri") + "</h3>");
		out.println(request.getAttribute("javax.servlet.error.exception"));
		out.println("</pre></td></tr></table><div align='right'>");
		out.println("［<a href='mailto:XXX99999@xxx.xx.xx'>XXX99999@xxx.xx.xx</a>］");
		out.println("</div>");
		application.log(request.getAttribute("javax.servlet.error.exception").toString());
		out.println("</body></html>");
	}
}
