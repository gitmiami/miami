<?php
$emp_no = $_POST["emp_no"];
$server = "localhost";
$dbname = "ajax_ec";
$user   = "mysql";
$passwd = "callback";
$sv = mysql_connect($server, $user, $passwd) or die("Connection Error1");
$db = mysql_select_db($dbname) or die("Connection Error2");
$sql = "select * from emp_mas where emp_no='$emp_no'";
$rows = mysql_query($sql, $sv) or die("mysql query Error");
$row = mysql_fetch_array($rows, MYSQL_ASSOC);
echo $row["emp_name"];
?>
