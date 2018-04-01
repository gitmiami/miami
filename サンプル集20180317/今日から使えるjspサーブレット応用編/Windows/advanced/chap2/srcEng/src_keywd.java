package srcEng;

import beanYama.*;
import srcEng.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class src_keywd extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		String strOpe=null;
		StringTokenizer objTkn=null;
		String strKey=(String)request.getAttribute("keywd");
		int intOrd=((String)request.getAttribute("ordr")).equals("newer") ? 1 : 0;
		if(strKey.indexOf(',')==-1){
			objTkn=new StringTokenizer(strKey," ");
			strOpe="AND";
		}else{
			objTkn=new StringTokenizer(strKey,",");
			strOpe="OR";
		}
		ArrayList objAry=new ArrayList();
		while(objTkn.hasMoreTokens()){objAry.add(objTkn.nextToken());}
		src_bean objSrc=new src_bean();
		ResultSet rs=objSrc.getSiteInfo(objAry.toArray(),strOpe,intOrd);
		request.setAttribute("rs",rs);
		request.setAttribute("strKey",strKey);
		getServletConfig().getServletContext().getRequestDispatcher("/chap2/srcEng/keywd.jsp").forward(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		doGet(request,response);
	}
}
