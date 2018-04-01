<?php
// This example uses regular expressions to parse the XML,
// as most of the XML parsing functionality is not available in PHP 4.
//$emp_id = intval($_REQUEST['emp_no']);
$emp_no = $_GET("emp_no");
$empxml = file_get_contents("employee.xml");
// get <film> element with ID
//$rv = preg_match('/<film id="'.$filmid.'">(.*?)<\/film>/s', $xml, $match);
//$rv = preg_match('/<emp_id>"'.$emp_id.'<\/emp_id>/s', $empxml, $match);
$rv = preg_match("/<emp_no>".$emp_no."<\/emp_no>/", $empxml, $match);
if ($rv) {
 // preg_match('/<emp_name>(.*?)<\/emp_name>/s',$mfilm[1], $mtitle);
	echo $match;
	//echo $match;
	//echo $rv;
} else {
  echo "emp_ name not found<i>";
}
?>

