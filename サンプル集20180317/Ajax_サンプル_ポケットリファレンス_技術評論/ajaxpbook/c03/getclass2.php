<?php
/* ************************************** *
 *      getclass2.php                     *
 *         2008/02/10                     *
 *         written by K.seino             *
 * ************************************** */
$DEBUG = 0;
if($DEBUG) echo 'getClass2Sel.php';
$server	= "localhost";
$dbname = "ajax_ec";
$user		= "mysql";
$passwd = "callback";
$sv = mysql_connect($server, $user, $passwd) or die("Connection error1");
if($DEBUG) echo "getClass2S: Connect to Server OK<br>";
$db = mysql_select_db($dbname) or die("Connection error2");
if($DEBUG) echo "getClass2S: Select Database OK<br>";
$class1_code = $_GET["class1_code"];
if ($DEBUG) echo "class1_code = ".$class1_code;
$sql = "select class2_code, class2_name from item_class2 where class1_code = '$class1_code'";
$rows = mysql_query($sql, $sv) or die("Error on select data");
if ($DEBUG) echo "getClass2S: データ検索成功";
$resRows = "";
while($row = mysql_fetch_array($rows, MYSQL_ASSOC)){
	$resRows = $resRows.$row["class2_code"]."<i>".$row["class2_name"]."<r>";
}
echo rtrim($resRows, "<r>");
?>
