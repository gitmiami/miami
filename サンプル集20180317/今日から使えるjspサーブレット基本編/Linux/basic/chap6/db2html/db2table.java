package tagLib;

import java.sql.*;
import java.util.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class db2table extends TagSupport {
	private String jdbcDriver = "org.gjt.mm.mysql.Driver";
	private String connectionString = null;
	private String sqlStatement = null;
	private String headerText = "";
	private String headerStyle= "";
	private String itemStyle = "";
	public int doStartTag() throws JspException {
		try {
			JspWriter out=pageContext.getOut();
			out.println("<table border='1'>");
			StringTokenizer objTkn=new StringTokenizer(headerText,",");
			out.print("<tr style='" + headerStyle + "' >");
			while(objTkn.hasMoreTokens()){
				out.print("<th>" + objTkn.nextToken() + "</th>");
			}
			out.print("</tr>");
			Class.forName(jdbcDriver);
			Connection db=DriverManager.getConnection(connectionString);
			Statement sttSql=db.createStatement();
			ResultSet rs=sttSql.executeQuery(sqlStatement);
			ResultSetMetaData rsMeta=rs.getMetaData();
			while(rs.next()){
				out.println("<tr>");
				for(int i=1;i<rsMeta.getColumnCount();i++){
					out.print("<td style='" + itemStyle + "' >");
					out.print(rs.getString(i) + "</td>");
				}
				out.println("</tr>");
			}
			out.println("</table>");
		}catch(Exception e){
			e.printStackTrace();
		}
		return SKIP_BODY;
	}
	public void setJdbcDriver (String jdbcDriver) {
		this.jdbcDriver=jdbcDriver;
	}
	public void setConnectionString (String connectionString) {
		this.connectionString=connectionString;
	}
	public void setSqlStatement (String sqlStatement) {
		this.sqlStatement=sqlStatement;
	}
	public void setHeaderText (String headerText) {
		this.headerText=headerText;
	}
	public void setHeaderStyle (String headerStyle) {
		this.headerStyle=headerStyle;
	}
	public void setItemStyle (String itemStyle) {
		this.itemStyle=itemStyle;
	}
}
