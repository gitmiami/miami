<%@ page contentType="text/html;charset=EUC-JP" %>
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
	out.println("本画面の参照は認められていません</span>");
	out.close();
}
%>
