<?php
$checks[] = @$_POST["checks"];
$resp = "";
for($i = 0; $i < count($checks); $i++){
	$resp = $resp.$checks[$i]."<i>";
}
echo $resp;
?>

