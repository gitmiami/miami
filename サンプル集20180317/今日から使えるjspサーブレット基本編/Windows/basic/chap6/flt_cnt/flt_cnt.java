package filter;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class flt_cnt implements Filter {
	private FilterConfig config=null;
	public void init(FilterConfig conf){
		this.config=conf;
	}
	public void destroy(){}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
		int intCnt=0;
		StringBuffer strRst=new StringBuffer();
		try{
			String strUrl=((HttpServletRequest)request).getServletPath();
			Class.forName("org.gjt.mm.mysql.Driver");
			Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=Shift_JIS");
			Statement objSql=db.createStatement();
			ResultSet rs=objSql.executeQuery("SELECT * FROM flt_cnt WHERE accessUrl='" + strUrl + "'");
			if(rs.next()){
				intCnt=rs.getInt("cnt")+1;
				objSql.executeUpdate("UPDATE flt_cnt SET cnt=" + intCnt + " WHERE accessUrl='" + strUrl + "'");
			}else{
				intCnt=1;
				objSql.executeUpdate("INSERT INTO flt_cnt(accessUrl,cnt) VALUES('" + strUrl + "'," + intCnt + ")");
			}
			String strNum=(new Integer(intCnt)).toString();
			for(int i=0;i<strNum.length();i++){
				Character chrTmp=new Character(strNum.charAt(i));
				strRst.append("<img src='/basic/chap3/grhCnt/pic" + chrTmp.toString());
				strRst.append(".gif' alt='" + chrTmp.toString() + "'>");
			}
			db.close();
			request.setAttribute("strRst",strRst.toString());
		}catch(Exception e){
			e.printStackTrace();
		}
		chain.doFilter(request,response);
	}
}
