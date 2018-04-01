<?php
$server	= "localhost";
$dbname = "ajax_ec";
$user		= "mysql";
$passwd = "callback";
$sv = mysql_connect($server, $user, $passwd) or die("Connection error1");
$db = mysql_select_db($dbname) or die("Connection error2");
$class1_code = $_GET["class1_code"];
$sql = "select class2_code, class2_name from item_class2 where class1_code = '$class1_code'";
$recs = mysql_query($sql, $sv) or die("Error on select data");
$resp = "";
while($rec = mysql_fetch_array($recs, MYSQL_ASSOC)){
	$resp = $resp.$rec["class2_code"]."<i>".$rec["class2_name"]."<p>";
}
echo rtrim($resp, "<p>");
?>
