<%@ page contentType="text/html;charset=Shift_JIS"
         import="beanYama.*,java.sql.*,java.util.*" %>
<%
String uid   =(String)session.getAttribute("uid");
String unam  =(String)session.getAttribute("unam");
String depart=(String)session.getAttribute("depart");
String perms =(String)session.getAttribute("perms");
String flag  =(String)session.getAttribute("flag");
if(flag==null){
	response.sendRedirect("index.jsp");
}else{
%>
	<html>
	<head>
	<title>���Y�Ǘ��V�X�e��
		�m<%=EncodeUtil.htmlEncode(unam + "(" + depart + ")")%>�n</title>
	</head>
	<body>
	<h1>
	<img src="cd.gif" width="25" height="25" />
	���Y�Ǘ��V�X�e��
	<img src="cd.gif" width="25" height="25" />
	</h1>
	<hr />
	<ol>
	<%
	int intPrm=Integer.parseInt(perms);
	ResourceBundle objRB=ResourceBundle.getBundle("dbConnect");
	Class.forName(objRB.getString("jdbcDriver"));
	Connection db=DriverManager.getConnection(objRB.getString("conStr"));
	Statement objSql=db.createStatement();
	ResultSet rs=objSql.executeQuery("SELECT * FROM mng_menu ORDER BY mid");
	while(rs.next()){
		if((intPrm & rs.getInt("perms")) == rs.getInt("perms")){
			out.println("<li><a href='" + rs.getString("url") + "'>");
			out.println(EncodeUtil.htmlEncode(rs.getString("mnam")) + "</a></li>");
		}
	}
	%>
	</ol>
	</body>
	</html>
<%
}
%>
