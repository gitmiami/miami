<%@ page contentType="text/html;charset=Shift_JIS" import="beanYama.*" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<%
String  uid   =(String)session.getAttribute("uid");
String  unam  =(String)session.getAttribute("unam");
String  depart=(String)session.getAttribute("depart");
String perms  =(String)session.getAttribute("perms");
String  flag  =(String)session.getAttribute("flag");
if(flag==null){
	response.sendRedirect("/advanced/chap3/mng/index.jsp");
}else{
%>
	<html>
	<head>
	<title>YÇVXe
	m<%=EncodeUtil.htmlEncode(unam + "(" + depart + ")")%>n</title>
	<yam:ErrorDisplay display="DIALOG" />
	</head>
	<body>
	<h1>
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	YÇVXeiVKYo^j
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	</h1>
	<div align="right">
		m<a href="/advanced/chap3/mng/menu.jsp">j[Éßé</a>n</div>
	<hr />
	<yam:Form
		processFile="/servlet/mng.mng_new_up" originalFile="/servlet/mng.mng_new">
	<table border="0">
		<tr>
			<th align="right">YÔF</th>
			<td>
			<yam:RichInput name="id" type="text" size="12" maxLength="10"
				imeMode="disabled" requiredCheck="true" lengthCheck="10" 
				regexCheck="[0-9]{3}-[0-9A-Z]{6}"
				duplicateCheck="mng_master,id" error="YÔ" />
			</td>
		</tr><tr>
			<th align="right">i¼F</th>
			<td>
			<yam:RichInput name="nam" type="text" size="20" maxLength="25"
				imeMode="active" lengthCheck="25" error="i¼" />
			</td>
		</tr><tr>
			<th align="right">^ÔF</th>
			<td>
			<yam:RichInput name="fnum" type="text" size="15" maxLength="50"
				imeMode="disabled" lengthCheck="50" error="^Ô" />
			</td>
		</tr><tr>
			<th align="right">ÛÇÓCåF</th>
			<td>
			<yam:RichInput name="depart" type="select"
				dataSource="dpt" dataSourceValue="dpt" />
			</td>
		</tr><tr>
			<th align="right">ÝuêF</th>
			<td>
			<yam:RichInput name="plac" type="text" size="35" maxLength="15"
				imeMode="active"
				requiredCheck="true" lengthCheck="15" error="Ýuê" />
			</td>
		</tr><tr>
			<th align="right">æ¾NúF</th>
			<td>
			<yam:RichInput name="dat" type="text" size="15" maxLength="10"
				imeMode="disabled" requiredCheck="true" dateTypeCheck="true"
				error="æ¾Nú" />iYYYY-MM-DDj</td>
		</tr><tr>
			<th align="right">õlF</th>
			<td>
			<yam:RichInput name="mem" type="text" size="50" maxLength="255"
				imeMode="active" lengthCheck="255" />
			</td>
		</tr><tr>
			<td colspan="2" align="center">
				<input type="submit" name="sbm" value="VKo^" />
				<input type="reset" value="æÁ" />
			</td>
		</tr>
	</table>
	</yam:Form>
	</body>
	</html>
<%
}
%>
