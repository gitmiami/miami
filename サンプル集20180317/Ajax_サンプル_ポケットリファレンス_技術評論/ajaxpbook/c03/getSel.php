<?php
$emp_nos[] = @$_POST["emp_no"];
$emp_name = "";
$server = "localhost";
$dbname = "ajax_ec";
$user   = "mysql";
$passwd = "callback";
$sv = mysql_connect($server, $user, $passwd) or die("Connection Error1");
$db = mysql_select_db($dbname) or die("Connection Error2");
for ($i = 0; $i < count(@$_POST["emp_no"]); $i++) {
//for ($i = 0; $i < count($emp_nos); $i++) {
//for($i = 0; $i < 3; $i++){
	$emp_no = $_POST["emp_no"][$i];
	//$emp_no = $emp_nos[$i];
//	$emp_no = "A0002";
		
	$sql = "select * from emp_mas where emp_no='$emp_no'";
	$rows = mysql_query($sql, $sv) or die("mysql query Error");
	$row = mysql_fetch_array($rows, MYSQL_ASSOC);
  $emp_name = $emp_name.$row["emp_name"]."<i>";
	
}
echo $emp_name;
//echo sizeof($emp_nos)."<i>";
//echo $emp_nos[0].$emp_nos[1].$emp_nos[2];

?>
