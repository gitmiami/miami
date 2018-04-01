<%@ page contentType="text/html;charset=Shift_JIS" import="beanYama.*" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<jsp:useBean id="objFac" class="facility.fac_bean" scope="page" />
<html>
<head>
<title>é{ê›ó\ñÒ</title>
<yam:ErrorDisplay display="DIALOG" terminate="true" />
</head>
<body>
<form method="POST" action="/advanced/servlet/facility.fac_up" target="_parent">
<input type="submit" value="ó\ñÒ" />
<input type="reset" value="éÊè¡" />
<table border="1">
<tr bgcolor="#99CCFF">
	<th></th>
	<th nowrap>08:00Å`</th><th nowrap>09:00Å`</th><th nowrap>10:00Å`</th>
	<th nowrap>11:00Å`</th><th nowrap>12:00Å`</th><th nowrap>13:00Å`</th>
	<th nowrap>14:00Å`</th><th nowrap>15:00Å`</th><th nowrap>16:00Å`</th>
	<th nowrap>17:00Å`</th>
</tr>
<%
String strUsr=request.getRemoteUser();
String strYear =(String)request.getAttribute("yr");
String strMonth=(String)request.getAttribute("mon");
String strDay  =(String)request.getAttribute("dy");
objFac.getFacInfo();
for(int i=0;i<objFac.getResultCount();i++){
	objFac.getReserveInfo(strYear,strMonth,strDay,objFac.getFid(i));
%>
	<tr align="center">
	<th bgcolor="#ffcc99" nowrap><%=objFac.getFnam(i)%></th>
	<%=objFac.dispBox(objFac.getFid(i), 8,objFac.getR08(),strUsr,true)%>
	<%=objFac.dispBox(objFac.getFid(i), 9,objFac.getR09(),strUsr,true)%>
	<%=objFac.dispBox(objFac.getFid(i),10,objFac.getR10(),strUsr,true)%>
	<%=objFac.dispBox(objFac.getFid(i),11,objFac.getR11(),strUsr,true)%>
	<%=objFac.dispBox(objFac.getFid(i),12,objFac.getR12(),strUsr,true)%>
	<%=objFac.dispBox(objFac.getFid(i),13,objFac.getR13(),strUsr,true)%>
	<%=objFac.dispBox(objFac.getFid(i),14,objFac.getR14(),strUsr,true)%>
	<%=objFac.dispBox(objFac.getFid(i),15,objFac.getR15(),strUsr,true)%>
	<%=objFac.dispBox(objFac.getFid(i),16,objFac.getR16(),strUsr,true)%>
	<%=objFac.dispBox(objFac.getFid(i),17,objFac.getR17(),strUsr,true)%>
	</tr>
<%
}
%>
</table>
<input type="hidden" name="year"  value="<%=strYear%>" />
<input type="hidden" name="month" value="<%=strMonth%>" />
<input type="hidden" name="day"   value="<%=strDay%>" />
</form>
<p align="center">
	<form method="POST" action="/advanced/servlet/facility.fac_dl">
	<input type="hidden" name="usr" value="<%=request.getRemoteUser()%>" />
	<input type="hidden" name="dl_y" value="<%=strYear%>" />
	<input type="hidden" name="dl_m" value="<%=strMonth%>" />
	<input type="hidden" name="dl_d" value="<%=strDay%>" />
	<input type="submit" value="ó\ñÒèÛãµÉ_ÉEÉìÉçÅ[Éh" />
	</form>
</p>
</body>
</html>
