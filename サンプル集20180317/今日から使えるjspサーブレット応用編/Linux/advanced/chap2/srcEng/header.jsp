<%@ page contentType="text/html;charset=EUC-JP" %>
<h1>
<img src="/advanced/chap2/srcEng/srch.gif" width="30" height="30" />
�������󥸥�
<img src="/advanced/chap2/srcEng/srch.gif" width="30" height="30" />
</h1>
��<a href="/advanced/chap2/srcEng/index.jsp">�ۡ���</a>�ϡ�
<% if(request.getAttribute("cate")!=null){ %>
��<a href="/advanced/chap2/srcEng/submit.jsp?cate=<%=request.getAttribute("cate")%>">���ߤγ��ؤ���Ͽ</a>�ϡ�
<% } %>
��<a href="/advanced/servlet/srcEng.src_select">My Search��</a>��
<hr />
