<?php
$server	= "localhost";
$dbname = "ajax_ec";
$user		= "mysql";
$passwd = "callback";
$sv = mysql_connect($server, $user, $passwd) or die("Connection error1");
$db = mysql_select_db($dbname) or die("Connection error2");
$sql = "select * from edit1 order by date desc limit 0,1";
$rows = mysql_query($sql, $sv) or die("mysql query Error");
$row = mysql_fetch_array($rows, MYSQL_ASSOC);
if($row > 0){
  echo $row["value"];
}else{
  echo "NO";
}
?>
