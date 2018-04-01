<?php
$server = "localhost";
$dbname = "ajax_ec";
$user   = "mysql";
$passwd = "callback";
$sv = mysql_connect($server, $user, $passwd) or die("Connection error1");
$db = mysql_select_db($dbname) or die("Connection error2");
$emp_no 	= $_GET["emp_no"];
$sql = "select * from emp_mas where emp_no='$emp_no'";
$rows = mysql_query($sql, $sv) or die("mysql query Error");
$row = mysql_fetch_array($rows, MYSQL_ASSOC);
if($row>0){
  $resp = "OK"."<i>";
  $resp = $resp.$row["emp_name"]."<i>";
  $resp = $resp.$row["section"]."<i>";
  $resp = $resp.$row["mod_date"];
  echo $resp;
}else{
  echo "検索不成功: ".$emp_no."<i>";
}
?>
