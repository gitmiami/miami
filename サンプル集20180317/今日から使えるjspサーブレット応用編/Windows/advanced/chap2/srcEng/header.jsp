<%@ page contentType="text/html;charset=Shift_JIS" %>
<h1>
<img src="/advanced/chap2/srcEng/srch.gif" width="30" height="30" />
�����G���W��
<img src="/advanced/chap2/srcEng/srch.gif" width="30" height="30" />
</h1>
�m<a href="/advanced/chap2/srcEng/index.jsp">�z�[��</a>�n�b
<% if(request.getAttribute("cate")!=null){ %>
�m<a href="/advanced/chap2/srcEng/submit.jsp?cate=<%=request.getAttribute("cate")%>">���݂̊K�w�ɓo�^</a>�n�b
<% } %>
�m<a href="/advanced/servlet/srcEng.src_select">My Search��</a>�n
<hr />
