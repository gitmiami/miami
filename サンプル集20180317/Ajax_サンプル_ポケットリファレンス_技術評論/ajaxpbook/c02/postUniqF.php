<?php
$emp_no = $_POST["emp_no"];
$file = fopen("employee.txt", "r")  or die("OPENエラー");
while($data = fgetcsv($file, 40)){
  if(strncmp($data[0], $emp_no, 5) == 0){
      echo substr($data[0], 5);
   }	
}
?>

