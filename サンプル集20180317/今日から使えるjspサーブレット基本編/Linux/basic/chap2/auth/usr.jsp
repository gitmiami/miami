<%@ page contentType="text/html;charset=EUC-JP" %>
<%
if(!request.isUserInRole("user")){
	out.println("<span style='color:Red;'>");
	out.println("�ܲ��̤λ��Ȥ�ǧ����Ƥ��ޤ���</span>");
	out.close();
}
%>
<html>
<head>
<title>�桼���ѥ�˥塼</title>
</head>
<body>
<h1>�桼���ѥ�˥塼</h1>
</body>
</html>