<%@ page contentType="text/html;charset=Shift_JIS" %>
<%
int intNum=Integer.parseInt(request.getParameter("intNum"));
String[] aryUsr ={"user1","user2","user3"};
boolean[][] aryAuth={{true,false,true},{true,true,false},{true,true,true}};
boolean flag=false;
for(int i=0;i<aryUsr.length;i++){
	if(aryAuth[intNum][i] && request.isUserInRole(aryUsr[i])){
		flag=true;
		break;
	}
}
if(!flag){
	out.println("<span style='color:Red;'>");
	out.println("–{‰æ–Ê‚ÌQÆ‚Í”F‚ß‚ç‚ê‚Ä‚¢‚Ü‚¹‚ñ</span>");
	out.close();
}
%>
