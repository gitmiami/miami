package mng;

import mng.*;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class mng_usr extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		mng_usr_bean objUsr=new mng_usr_bean();
		try {
			if(request.getAttribute("samples.error.message")==null) {
				int cnt=1;
				ResultSet rs=objUsr.getUsrInfo();
				while(rs.next()){
					String strAdm=objUsr.isAdmin(rs.getInt("perms")) ? "4" : "";
					String strSpr=objUsr.isSuper(rs.getInt("perms")) ? "2" : "";
					String strUsr=objUsr.isUser(rs.getInt("perms"))  ? "1" : "";
					request.setAttribute("uid" + cnt,   rs.getString("uid"));
					request.setAttribute("passwd" + cnt,rs.getString("passwd"));
					request.setAttribute("unam" + cnt,  rs.getString("unam"));
					request.setAttribute("depart" + cnt,rs.getString("depart"));
					request.setAttribute("admin" + cnt, strAdm);
					request.setAttribute("super" + cnt, strSpr);
					request.setAttribute("user" + cnt,  strUsr);
					cnt++;
				}
				request.setAttribute("cnt",(new Integer(cnt)).toString());
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		String[] aryDum ={""};
		String[] aryAdm ={"4"}; String[] arySpr={"2"}; String[] aryUsr={"1"};
		String[] aryMdN1={"none","insert"};
		String[] aryMdN2={"èàóùÇ»Çµ","ìoò^"};
		String[] aryMdU1={"none","update","delete"};
		String[] aryMdU2={"èàóùÇ»Çµ","çXêV","çÌèú"};
		String[] aryDpt ={"ëçñ±","éëçﬁ","ãZèp","êªë¢","ÉVÉXÉeÉÄ"};
		request.setAttribute("blank",aryDum);
		request.setAttribute("admin",aryAdm);
		request.setAttribute("super",arySpr);
		request.setAttribute("user" ,aryUsr);
		request.setAttribute("mid_new" ,aryMdN1);
		request.setAttribute("mid_newV",aryMdN2);
		request.setAttribute("mid_up"  ,aryMdU1);
		request.setAttribute("mid_upV" ,aryMdU2);
		request.setAttribute("depart"  ,aryDpt);
		getServletConfig().getServletContext().getRequestDispatcher("/chap3/mng/usr.jsp").forward(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		doGet(request,response);
	}
}
