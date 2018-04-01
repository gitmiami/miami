<?php
$server	= "localhost";
$dbname = "ajax_ec";
$user		= "mysql";
$passwd = "callback";
$sv = mysql_connect($server, $user, $passwd) or die("Connection error1");
$db = mysql_select_db($dbname) or die("Connection error2");
$sql = "select class1_code, class1_name from item_class1 order by class1_code";
$recs = mysql_query($sql, $sv) or die("Error on select data");
$resp = "";
while($rec = mysql_fetch_array($recs, MYSQL_ASSOC)){
	$resp = $resp.$rec["class1_code"]."<i>".$rec["class1_name"]."<r>";
}
echo rtrim($resp, "<r>");
?>
