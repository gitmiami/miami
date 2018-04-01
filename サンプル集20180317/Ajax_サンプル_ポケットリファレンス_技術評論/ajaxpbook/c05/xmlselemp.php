<?php
$emp_no = $_GET["emp_no"];

$empxml = file_get_contents("employee.xml");
$rv = preg_match("/<emp_no>".$emp_no."<\/emp_no>/", $empxml, $matches);
if ($rv) {
	echo $matches[0].$matches[1].$matches[2];
} else {
  echo "emp_ name not found<i>";
}

//echo $emp_no;
?>

