<?php 
	include_once '../includes/db.inc.php';
$firstname= $_POST['firstname'];
$email= $_POST['email'];
$address=$_POST['address'];
$city=$_POST['city'];
$state=$_POST['state'];
$zip=$_POST['zip'];
$sql = "insert into billing(firstname,email,address,city,state,zip) values('$firstname','$email',$city, '$state','$zip');";
mysqli_query($conn, $sql);
		header("Location: ../viewbookings.php?result=success");
?>

    