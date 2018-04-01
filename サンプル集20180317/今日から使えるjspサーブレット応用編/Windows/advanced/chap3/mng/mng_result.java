package mng;

import mng.*;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class mng_result extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		boolean flag=false;
		String[] strPrm={"id","fnum","depart"};
		String sql   ="SELECT * FROM mng_master ";
		for(int i=0;i<strPrm.length;i++){
			String strVal=(String)request.getAttribute(strPrm[i]);
			if(strVal != null && !(strVal.equals(""))){
				if(flag){sql+="AND ";}else{sql+="WHERE ";}
				sql+=strPrm[i] + "= '" + strVal + "' ";
				flag=true;
			}
		}
		mng_bean objMng=new mng_bean();
		objMng.getInfo(sql + " ORDER BY id ASC");
		request.setAttribute("objMng",objMng);
		getServletConfig().getServletContext().getRequestDispatcher("/chap3/mng/result.jsp").forward(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException {
		doGet(request,response);
	}
}
