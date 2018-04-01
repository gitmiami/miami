<?php
$server = "localhost";
$dbname = "ajax_ec";
$user   = "mysql";
$passwd = "callback";
$sv = mysql_connect($server, $user, $passwd) or die("Connection error1");
$db = mysql_select_db($dbname) or die("Connection error2");
$emp_no 	= $_POST["emp_no"];
$sql = "delete from emp_mas	where	emp_no='$emp_no'";
if($rows = mysql_query($sql, $sv)){
  echo "削除成功: "."従業員番号=".$emp_no;
}else{
  echo "削除不成功: "."従業員番号=".$emp_no;
}
?>
