<%@ page contentType="text/html;charset=Shift_JIS" %>
<h1>
<img src="/advanced/chap2/srcEng/srch.gif" width="30" height="30" />
検索エンジン
<img src="/advanced/chap2/srcEng/srch.gif" width="30" height="30" />
</h1>
［<a href="/advanced/chap2/srcEng/index.jsp">ホーム</a>］｜
<% if(request.getAttribute("cate")!=null){ %>
［<a href="/advanced/chap2/srcEng/submit.jsp?cate=<%=request.getAttribute("cate")%>">現在の階層に登録</a>］｜
<% } %>
［<a href="/advanced/servlet/srcEng.src_select">My Searchへ</a>］
<hr />
