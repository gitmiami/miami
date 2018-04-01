package db;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class db_update extends HttpServlet {
	StringBuffer strSql;
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		strSql=new StringBuffer();
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
			Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=EUC-JP");
			Statement objSql=db.createStatement();
			if(request.getParameter("flag").equals("new")){
				strSql.append("CREATE TABLE " + request.getParameter("tbl") + "(");
				for(int i=0;i<11;i++){
					String strTmp=request.getParameter("fld" + i);
					if(strTmp!=null && !strTmp.equals("")){
						if(i>0){strSql.append(",");}
						trans(request,i);
					}
				}
				strSql.append(")");
				objSql.executeUpdate(strSql.toString());
			}else{
				strSql.append("ALTER TABLE " + request.getParameter("tbl") + " ");
				for(int i=1;i<=Integer.parseInt(request.getParameter("cnt"));i++){
					String strMid=request.getParameter("mid" + i);
					if(strMid==null || strMid.equals("")){continue;}
					if(i>1){strSql.append(",");}
					switch(strMid.charAt(0)){
						case 'm' :
							strSql.append("CHANGE " + request.getParameter("old" + i) + " ");
							trans(request,i);
							break;
						case 'a' :
							strSql.append("ADD ");
							trans(request,i);
							strSql.append(" AFTER " + request.getParameter("old" + i));
							break;
						case 'd' :
							strSql.append("DROP " + request.getParameter("old" + i));
							break;
					}
				}
				objSql.executeUpdate(strSql.toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("/basic/chap5/dbGui/index.html");
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException {
		doGet(request,response);
	}
	private void trans(HttpServletRequest request,int num){
		switch(Integer.parseInt(request.getParameter("dat" + num))){
			case 0 :
				strSql.append(request.getParameter("fld" + num) + " TINYINT");
				break;
			case 1 :
				strSql.append(request.getParameter("fld" + num) + " INT");
				break;
			case 2 :
				strSql.append(request.getParameter("fld" + num) + " DOUBLE(" + request.getParameter("siz" + num) + "," + request.getParameter("dec" + num) + ")");
				break;
			case 3 :
				strSql.append(request.getParameter("fld" + num) + " VARCHAR(" + request.getParameter("siz" + num) + ")");
				break;
			case 4 :
				strSql.append(request.getParameter("fld" + num) + " TEXT");
				break;
			case 5 :
				strSql.append(request.getParameter("fld" + num) + " DATETIME");
				break;
			case 6 :
				strSql.append(request.getParameter("fld" + num) + " DATE");
				break;
			case 7 :
				strSql.append(request.getParameter("fld" + num) + " TIME");
				break;
		}
		if(request.getParameter("prm" + num)!=null && request.getParameter("prm" + num).equals("P")){strSql.append(" PRIMARY KEY");}
	}
}
