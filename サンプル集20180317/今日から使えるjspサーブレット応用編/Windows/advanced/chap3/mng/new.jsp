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
	<title>資産管理システム
	［<%=EncodeUtil.htmlEncode(unam + "(" + depart + ")")%>］</title>
	<yam:ErrorDisplay display="DIALOG" />
	</head>
	<body>
	<h1>
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	資産管理システム（新規資産登録）
	<img src="/advanced/chap3/mng/cd.gif" width="25" height="25" />
	</h1>
	<div align="right">
		［<a href="/advanced/chap3/mng/menu.jsp">メニューに戻る</a>］</div>
	<hr />
	<yam:Form
		processFile="/servlet/mng.mng_new_up" originalFile="/servlet/mng.mng_new">
	<table border="0">
		<tr>
			<th align="right">資産番号：</th>
			<td>
			<yam:RichInput name="id" type="text" size="12" maxLength="10"
				imeMode="disabled" requiredCheck="true" lengthCheck="10" 
				regexCheck="[0-9]{3}-[0-9A-Z]{6}"
				duplicateCheck="mng_master,id" error="資産番号" />
			</td>
		</tr><tr>
			<th align="right">品名：</th>
			<td>
			<yam:RichInput name="nam" type="text" size="20" maxLength="25"
				imeMode="active" lengthCheck="25" error="品名" />
			</td>
		</tr><tr>
			<th align="right">型番：</th>
			<td>
			<yam:RichInput name="fnum" type="text" size="15" maxLength="50"
				imeMode="disabled" lengthCheck="50" error="型番" />
			</td>
		</tr><tr>
			<th align="right">保管責任部門：</th>
			<td>
			<yam:RichInput name="depart" type="select"
				dataSource="dpt" dataSourceValue="dpt" />
			</td>
		</tr><tr>
			<th align="right">設置場所：</th>
			<td>
			<yam:RichInput name="plac" type="text" size="35" maxLength="15"
				imeMode="active"
				requiredCheck="true" lengthCheck="15" error="設置場所" />
			</td>
		</tr><tr>
			<th align="right">取得年月日：</th>
			<td>
			<yam:RichInput name="dat" type="text" size="15" maxLength="10"
				imeMode="disabled" requiredCheck="true" dateTypeCheck="true"
				error="取得年月日" />（YYYY-MM-DD）</td>
		</tr><tr>
			<th align="right">備考：</th>
			<td>
			<yam:RichInput name="mem" type="text" size="50" maxLength="255"
				imeMode="active" lengthCheck="255" />
			</td>
		</tr><tr>
			<td colspan="2" align="center">
				<input type="submit" name="sbm" value="新規登録" />
				<input type="reset" value="取消" />
			</td>
		</tr>
	</table>
	</yam:Form>
	</body>
	</html>
<%
}
%>
