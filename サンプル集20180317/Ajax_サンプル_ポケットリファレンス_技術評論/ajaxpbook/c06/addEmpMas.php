<?php
$server = "localhost";
$dbname = "ajax_ec";
$user   = "mysql";
$passwd = "callback";
$sv = mysql_connect($server, $user, $passwd) or die("Connection error1");
$db = mysql_select_db($dbname) or die("Connection error2");
$emp_no 	= $_POST["emp_no"];
$emp_name = $_POST["emp_name"];
$section 	= $_POST["section"];
$mod_date = date("Y-n-d");
$sql = "insert into emp_mas
   values('$emp_no', '$emp_name', '$section', '$mod_date')";
if($rows = mysql_query($sql, $sv)){
  echo "登録成功: "."従業員番号=".$emp_no;
}else{
  echo "登録不成功: "."従業員番号=".$emp_no;
}
?>
