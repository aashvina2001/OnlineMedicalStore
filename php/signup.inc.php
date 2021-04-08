<?php 
	include_once '../includes/db.inc.php';
	if (isset($_POST['signup'])) {
		$uname = $_POST['username'];
		$email = $_POST['email'];
		$pwd1 = $_POST['password'];
		$secque = $_POST['secque'];
		$secans = $_POST['secans'];

		$sql = "insert into userlogin(username, password, email, secque, secans) values('$uname', '$pwd1', '$email', '$secque', '$secans');";
		mysqli_query($conn, $sql);
		header("Location: ../login.php?result=success");
	}
?>