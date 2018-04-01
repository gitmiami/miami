<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql"  %>
<html>
<head>
<title>メーリングリスト（メンバ更新・削除）</title>
</head>
<body>
<h1>メーリングリスト（メンバ更新・削除）</h1>
<form method="POST" action="dbSubmit.jsp">
	<table border="0">
	<tr>
		<th align="right">処理区分：</th>
		<td>
			<select name="mid">
				<option value="insert">登録</option>
				<option value="delete">削除</option>
			</select>
		</td>
	</tr>
	<tr>
		<th align="right">登録メンバ名：</th>
		<td><input type="text" name="unam" size="15" maxlength="10" /></td>
	</tr>
	<tr>
		<th align="right">E-Mailアドレス：</th>
		<td><input type="text" name="email" size="50" maxlength="100" /></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="登録・削除" />
			<input type="reset" value="クリア" />
		</td>
	</tr>
	</table>
</form>
<fmt:requestEncoding value="Shift_JIS" />
<sql:setDataSource
	driver="org.gjt.mm.mysql.Driver" var="db"
	url="jdbc:mysql://localhost/jsp?user=jsp&password=jsp&useUnicode=true&characterEncoding=Shift_JIS" />
<div style="color:Red;">
<c:catch var="errMsg">
	<c:choose>
		<c:when test="${param.mid=='insert'}">
			<c:if test="${param.email==''}">
				メールアドレスは必ず入力してください。
			</c:if>
			<c:if test="${param.email!=''}">
				<sql:update dataSource="${db}">
					INSERT INTO ml_usr(email,unam) VALUES(?,?)
					<sql:param value="${param.email}" />
					<sql:param value="${param.unam}" />
				</sql:update>
				新規登録に成功しました。
			</c:if>
		</c:when>
		<c:when test="${param.mid=='delete'}">
			<sql:update dataSource="${db}">
				DELETE FROM ml_usr WHERE email=?
				<sql:param value="${param.email}" />
			</sql:update>
			削除処理に成功しました。
		</c:when>
	</c:choose>
</c:catch>
<c:if test="${errMsg!=null}"><c:out value="${errMsg}" /></c:if>
</div>
</body>
</html>
