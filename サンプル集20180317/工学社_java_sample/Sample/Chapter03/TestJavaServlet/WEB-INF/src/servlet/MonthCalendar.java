package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.GregorianCalendar;

/**
 * @author 関西大学総合情報学部　田中研究室
 */
public class MonthCalendar extends HttpServlet {

	private int[][] monthDays ={
			{31,29,31,30,31,30,31,31,30,31,30,31},
			{31,28,31,30,31,30,31,31,30,31,30,31}
	};
	private int year;
	private int month;
	private int day;
	private int dayOfWeek;
	private int leapDays;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=Shift_JIS");

		PrintWriter out = response.getWriter();
		getCalendar();

		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"" +
				    "\"http://www.w3.org/TR/html4/strict.dtd\">");
		out.println("<html>");
		out.println("\t<head>");
		out.println("\t\t<title>今月のカレンダー</title>");
		out.println("\t</head>");
		out.println("\t<body>");
		out.println("\t\t<h1 align=\"center\">" + year + "年"); 
		out.println(month+1);
		out.println("月</h1>");
		out.println("\t\t<table width=\"100%\" border=\"1\"" +
				    "cellspacing=\"0\"ellpadding=\"1\">");
		out.println("\t\t\t<tr>");
		out.println("\t\t\t\t<th bgcolor=\"pink\">日</th>");
		out.println("\t\t\t\t<th bgcolor=\"lightcyan\">月</th>");
		out.println("\t\t\t\t<th bgcolor=\"lightcyan\">火</th>");
		out.println("\t\t\t\t<th bgcolor=\"lightcyan\">水</th>");
		out.println("\t\t\t\t<th bgcolor=\"lightcyan\">木</th>");
		out.println("\t\t\t\t<th bgcolor=\"lightcyan\">金</th>");
		out.println("\t\t\t\t<th bgcolor=\"aqua\">土</th>");
		out.println("\t\t\t</tr>");
		out.println("\t\t\t<tr valign=top>");

		for(int i = 1 ; i < dayOfWeek ; i++){
			out.println("<td bgcolor=\"lightyellow\"><br></td>");
		}
		for(int i = 1 ; i <= monthDays[leapDays][month]; i++){
			if (dayOfWeek == 8){
				dayOfWeek = 1;
				out.println("</tr>\n\t\t\t<tr valign=\"top\">");
			}
			if (dayOfWeek == 1){
				out.println("\t\t\t\t<th bgcolor=\"pink\">"+i+"</th>");
			}else if (dayOfWeek == 7){
				out.println("\t\t\t\t<th bgcolor=\"lightcyan\">"+i+"</th>");
			}else{
				out.println("\t\t\t\t<th bgcolor=\"white\">"+i+"</th>");
			}
			dayOfWeek++;
		}
		for(int i = dayOfWeek; i <= 7 ; i++){
			out.println("\t\t\t<td bgcolor=\"lightyellow\"><br></td>");
		}
		out.println("\t\t\t</tr>");
		out.println("\t\t</table>");
		out.println("\t</body>");
		out.println("</html>");
		out.close();
	}

	private void getCalendar() {

		GregorianCalendar calendar = new GregorianCalendar();

		year = calendar.get(GregorianCalendar.YEAR);
		month = calendar.get(GregorianCalendar.MONTH);
		day = calendar.get(GregorianCalendar.DATE);

		GregorianCalendar thisMonth = new GregorianCalendar(year, month, 1);
		dayOfWeek = thisMonth.get(GregorianCalendar.DAY_OF_WEEK);

		if (calendar.isLeapYear(year)){
			leapDays = 0;
		}else{
			leapDays = 1;
		}
	}
}