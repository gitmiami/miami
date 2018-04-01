<%@ page contentType="text/html;charset=EUC-JP" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql"  %>
<html>
<head>
<title>�᡼��󥰥ꥹ�ȡʥ��й����������</title>
</head>
<body>
<h1>�᡼��󥰥ꥹ�ȡʥ��й����������</h1>
<form method="POST" action="dbSubmit.jsp">
	<table border="0">
	<tr>
		<th align="right">������ʬ��</th>
		<td>
			<select name="mid">
				<option value="insert">��Ͽ</option>
				<option value="delete">���</option>
			</select>
		</td>
	</tr>
	<tr>
		<th align="right">��Ͽ����̾��</th>
		<td><input type="text" name="unam" size="15" maxlength="10" /></td>
	</tr>
	<tr>
		<th align="right">E-Mail���ɥ쥹��</th>
		<td><input type="text" name="email" size="50" maxlength="100" /></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="��Ͽ�����" />
			<input type="reset" value="���ꥢ" />
		</td>
	</tr>
	</table>
</form>
<fmt:requestEncoding value="EUC-JP" />
<sql:setDataSource
	driver="org.gjt.mm.mysql.Driver" var="db"
	url="jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=EUC-JP" />
<div style="color:Red;">
<c:catch var="errMsg">
	<c:choose>
		<c:when test="${param.mid=='insert'}">
			<c:if test="${param.email==''}">
				�᡼�륢�ɥ쥹��ɬ�����Ϥ��Ƥ���������
			</c:if>
			<c:if test="${param.email!=''}">
				<sql:update dataSource="${db}">
					INSERT INTO ml_usr(email,unam) VALUES(?,?)
					<sql:param value="${param.email}" />
					<sql:param value="${param.unam}" />
				</sql:update>
				������Ͽ���������ޤ�����
			</c:if>
		</c:when>
		<c:when test="${param.mid=='delete'}">
			<sql:update dataSource="${db}">
				DELETE FROM ml_usr WHERE email=?
				<sql:param value="${param.email}" />
			</sql:update>
			����������������ޤ�����
		</c:when>
	</c:choose>
</c:catch>
<c:if test="${errMsg!=null}"><c:out value="${errMsg}" /></c:if>
</div>
</body>
</html>
