<%@ page contentType="text/html;charset=Shift_JIS"
         import="javax.mail.internet.*" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="req" uri="http://jakarta.apache.org/taglibs/request-1.0" %>
<%@ taglib prefix="mt"  uri="http://jakarta.apache.org/taglibs/mailer-1.1" %>
<fmt:requestEncoding value="Shift_JIS" />
<%
String strSbj=MimeUtility.encodeText(request.getParameter("sbj"),"ISO-2022-JP","B");
String strMsg=new String(request.getParameter("body").getBytes("ISO-2022-JP"));
%>
<mt:mail server="smtp.xxxxx.ne.jp">
	<req:existsParameter name="to">
		<mt:setrecipient type="to"><req:parameter name="to" /></mt:setrecipient>
	</req:existsParameter>
	<req:existsParameter name="cc">
		<mt:setrecipient type="cc"><req:parameter name="cc" /></mt:setrecipient>
	</req:existsParameter>
	<req:existsParameter name="bcc">
		<mt:setrecipient type="bcc"><req:parameter name="bcc" /></mt:setrecipient>
	</req:existsParameter>
	<mt:from><req:parameter name="frmMail" /></mt:from>
	<mt:subject><%=strSbj%></mt:subject>
	<mt:message type="text"><%=strMsg%></mt:message>
	<mt:send>
	<p>メール送信時にエラーが発生しました。<br />
	［戻る］ボタンで前のページに戻り、入力内容を確認してください。</p>
		<mt:error id="err">
			<jsp:getProperty name="err" property="error" />
		</mt:error>
	</mt:send>
</mt:mail>
<c:redirect url="mail.html" />
