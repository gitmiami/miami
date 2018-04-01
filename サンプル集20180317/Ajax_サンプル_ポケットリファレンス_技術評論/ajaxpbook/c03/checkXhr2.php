<?php
$checks[] = @$_POST["checks"];
$resp = "";
$server = "localhost";
$dbname = "ajax_ec";
$user   = "mysql";
$passwd = "callback";
$sv = mysql_connect($server, $user, $passwd) or die("Connection Error1");
$db = mysql_select_db($dbname) or die("Connection Error2");

for($i = 0; $i < count($checks); $i++){
	//$resp = $resp.$checks[$i]."<i>";
	$emp_no = trim($checks[$i]);
  //$sql = "select * from emp_mas where emp_no='$emp_no'";
  $sql = "select * from emp_mas where emp_no='$emp_no'";
  $rows = mysql_query($sql, $sv) or die("mysql query Error");
  $row = mysql_fetch_array($rows, MYSQL_ASSOC);
  $resp = $resp.$row["emp_name"]."<i>";
	

}
echo $resp;
?>

