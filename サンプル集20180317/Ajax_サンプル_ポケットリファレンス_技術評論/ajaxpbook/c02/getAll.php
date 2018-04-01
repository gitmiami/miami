<?php
$server = "localhost";
$dbname = "ajax_ec";
$user   = "mysql";
$passwd = "callback";
$sv = mysql_connect($server, $user, $passwd) or die("Connection Error1");
$db = mysql_select_db($dbname) or die("Connection Error2");
$sql = "select * from emp_mas";
$rows = mysql_query($sql, $sv) or die("mysql query Error");
$resp = "";
while($row = mysql_fetch_array($rows, MYSQL_ASSOC)){
  $resp = $resp.$row["emp_no"]."<i>";
  $resp = $resp.$row["emp_name"]."<r>";
}
//echo rtrim($resp, "<r>");
echo $resp;
?>

