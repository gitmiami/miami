<?php
$value = $_POST["value"];
//$value = $_GET["value"];
$server	= "localhost";
$dbname = "ajax_ec";
$user		= "mysql";
$passwd = "callback";
$sv = mysql_connect($server, $user, $passwd) or die("Connection error1");
$db = mysql_select_db($dbname) or die("Connection error2");
$date = date("Y-n-d");
$sql = "insert into edit1 values('$value', '$date')";
if($rows = mysql_query($sql, $sv)){
	echo "編集成功: ".$value;
}else{
	echo "編集失敗: ".$value;
}
?>
