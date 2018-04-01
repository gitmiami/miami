package mng;

import mng.*;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class mng_update extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		HttpSession session=request.getSession();
		String  depart=(String)session.getAttribute("depart");
		String  perms =(String)session.getAttribute("perms");
		try {
			if(request.getAttribute("samples.error.message")==null) {
				mng_bean objMng=new mng_bean();
				ResultSet rs=objMng.getInfo(Integer.parseInt(perms),depart);
				int cnt=0;
				while(rs.next()){
					request.setAttribute("id" + cnt,    rs.getString("id"));
					request.setAttribute("nam" + cnt,   rs.getString("nam"));
					request.setAttribute("depart" + cnt,rs.getString("depart"));
					request.setAttribute("dat" + cnt,   rs.getString("dat"));
					request.setAttribute("mem" + cnt,   rs.getString("mem"));
					request.setAttribute("fnum" + cnt,  rs.getString("fnum"));
					request.setAttribute("plac" + cnt,  rs.getString("plac"));
					cnt++;
				}
				request.setAttribute("cnt",(new Integer(cnt)).toString());
			}
			String[] aryVal1={"ëçñ±","éëçﬁ","ãZèp","êªë¢","ÉVÉXÉeÉÄ"};
			String[] aryVal2={"ëçñ±ïî","éëçﬁïî","ãZèpïî","êªë¢ïî","ÉVÉXÉeÉÄïî"};
			request.setAttribute("depart",    aryVal1);
			request.setAttribute("depart_val",aryVal2);
		} catch (Exception e) {
			e.printStackTrace();
		}
		getServletConfig().getServletContext().getRequestDispatcher("/chap3/mng/update.jsp").forward(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		doGet(request,response);
	}
}
