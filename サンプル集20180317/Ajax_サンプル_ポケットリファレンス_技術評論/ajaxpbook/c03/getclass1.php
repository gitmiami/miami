<?php
/* ************************************** *
 *      getclass1.php                     *
 *         2008/02/11                     *
 *         written by K.seino             *
 * ************************************** */
$DEBUG = 0;
if($DEBUG) echo 'geclass1.php';
$server	= "localhost";
$dbname = "ajax_ec";
$user		= "mysql";
$passwd = "callback";
$sv = mysql_connect($server, $user, $passwd) or die("Connection error1");
if($DEBUG) echo "getClass1: Connect to Server OK<br>";
$db = mysql_select_db($dbname) or die("Connection error2");
if($DEBUG) echo "getClass1: Select Database OK<br>";
$sql = "select class1_code, class1_name from item_class1 order by class1_code";
$rows = mysql_query($sql, $sv) or die("Error on select data");
if ($DEBUG) echo "getClass1: データ検索成功";
$resRows = "";
while($row = mysql_fetch_array($rows, MYSQL_ASSOC)){
	$resRows = $resRows.$row["class1_code"]."<i>".$row["class1_name"]."<r>";
}
echo rtrim($resRows, "<r>");
?>
