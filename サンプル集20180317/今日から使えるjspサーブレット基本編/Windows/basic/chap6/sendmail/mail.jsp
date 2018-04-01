<%@ page contentType="text/html;charset=Shift_JIS" %>
<%@ taglib uri="/YamaTagLib" prefix="yam" %>
<html>
<head>
<title>メール送信（カスタムタグ）</title>
</head>
<body>
<yam:SendMail
	smtpServer="smtp.xxxxx.ne.jp"
	to="CQW15204@nifty.ne.jp;山田祥寛;yyamada@mcn.ne.jp;よしひろ"
	toNumber="2" fromAddress="CQW15204@nifty.com" fromName="なみ"
	subject="テスト">
こんにちは、山田です。
テストメールです。

確認してください。
</yam:SendMail>
メールの送信が完了しました
</body>
</html>