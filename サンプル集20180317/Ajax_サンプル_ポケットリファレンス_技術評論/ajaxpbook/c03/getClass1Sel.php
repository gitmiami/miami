<?php
/* ************************************** *
 *      getClass1Sel.php                  *
 *         2005/12/30                     *
 *         written by K.seino             *
 * ************************************** */
$DEBUG = 0;
if($DEBUG) echo 'getClass1Sel.php';

/* ************************************** *
 *           Connect to ajax_ec           *
 * ************************************** */ 
$server	= "localhost";
$dbname = "ajax_ec";
$user		= "mysql";
$passwd = "callback";

$sv = mysql_connect($server, $user, $passwd) or die("Connection error1");
if($DEBUG) echo "getClass1: Connect to Server OK<br>";

$db = mysql_select_db($dbname) or die("Connection error2");
if($DEBUG) echo "getClass1: Select Database OK<br>";

/* **************************************** *
 *         Select from item_class1          *
 * **************************************** */
$sql = "select class1_code, class1_name from item_class1 order by class1_code";
$rows = mysql_query($sql, $sv) or die("Error on select data");
if ($DEBUG) echo "getClass1: データ検索成功";

$resRows = "";
while($row = mysql_fetch_array($rows, MYSQL_ASSOC)){
	$resRows = $resRows.$row["class1_code"].",".$row["class1_name"]."<p>";
}
echo rtrim($resRows, "<p>");
?>
