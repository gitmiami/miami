package board;

import beanYama.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class brd_memo extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
		try {
			boolean flag=false;
			String uPsn=null;
			Cookie[] aryCok=request.getCookies();
			for(int i=0;i<aryCok.length;i++){
				if(aryCok[i].getName().equals("uid")){
					uPsn=aryCok[i].getValue();
					flag=true;
					break;
				}
			}
			if(flag){
				Class.forName(objRB.getString("jdbcDriver"));
				Connection db=DriverManager.getConnection(objRB.getString("conStr"));
				Statement objSql=db.createStatement();
				ResultSet rs=objSql.executeQuery("SELECT unam FROM brd_usr WHERE uid='" + request.getAttribute("uid") + "'");
				if(rs.next()){
					request.setAttribute("uPsn",uPsn);
					request.setAttribute("unam",rs.getString("unam"));
					request.setAttribute("now",EncodeUtil.formatDate("yyyy-MM-dd HH:mm:ss"));
				}
				String[] stt_num={"1","2","3","4"};
				String[] stt_val={"電話をかけてこられました","折り返し電話をくださいとのことです","お見えになりました","以下の伝言がありました"};
				request.setAttribute("stt_num",stt_num);
				request.setAttribute("stt_val",stt_val);
				getServletConfig().getServletContext().getRequestDispatcher("/chap3/board/memo.jsp").forward(request,response);
			}else{
				response.sendRedirect("/advanced/servlet/board.brd_cookie");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
}
