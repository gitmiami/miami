import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class srv_err extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		ServletContext application=getServletConfig().getServletContext();
		response.setContentType("text/html;charset=Shift_JIS");
		PrintWriter out=response.getWriter();
		out.println("<html><head>");
		out.println("<title>����ʂɂ����āA�G���[���������܂���</title>");
		out.println("</head><body>");
		out.println("<h1>�G���[���������܂���</h1>");
		out.println("<p>���݂̉�ʂɂ����āA�v���I�ȃG���[���������܂����B<br />");
		out.println("���΂炭�����Ă��G���[�����P����Ȃ��ꍇ�ɂ́A");
		out.println("�{��ʂ̃L���v�`����Y�t�̏�A�w���v�f�X�N�܂�");
		out.println("���A����������</p>");
		out.println("<hr />");
		out.println("<table border='8'>");
		out.println("<tr><td style='background:#ffffcc'><pre>");
		out.println("<h3>" + request.getAttribute("javax.servlet.error.request_uri") + "</h3>");
		out.println(request.getAttribute("javax.servlet.error.exception"));
		out.println("</pre></td></tr></table><div align='right'>");
		out.println("�m<a href='mailto:XXX99999@xxx.xx.xx'>XXX99999@xxx.xx.xx</a>�n");
		out.println("</div>");
		application.log(request.getAttribute("javax.servlet.error.exception").toString());
		out.println("</body></html>");
	}
}
