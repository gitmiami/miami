package filter;

import java.io.*;
import java.sql.*;
import java.util.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class flt_log implements Filter {
	private FilterConfig config=null;
	public void init(FilterConfig conf){
		this.config=conf;
	}
	public void destroy(){}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
		try{
			Class.forName("org.gjt.mm.mysql.Driver");
			Connection db=DriverManager.getConnection("jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=Shift_JIS");
			Statement objSql=db.createStatement();
			Calendar objCal=Calendar.getInstance();
			java.util.Date objDat=objCal.getTime();
			SimpleDateFormat objFmt=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			objSql.executeUpdate("INSERT INTO flt_log(accessTime,accessUrl,userAgent,httpReferer,userIp) VALUES('" + objFmt.format(objDat).toString() + "','" + ((HttpServletRequest)request).getServletPath() + "','" + ((HttpServletRequest)request).getHeader("user-agent") + "','" + ((HttpServletRequest)request).getHeader("referer") + "','" + request.getRemoteAddr() + "')");
			db.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		chain.doFilter(request,response);
	}
}
