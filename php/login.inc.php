<?php
	session_start();
	include_once '../includes/db.inc.php';
	$email = $_POST['email'];
	$pwd = $_POST['password'];

	if(isset($_POST['login'])) {
		$sql = "select email, password from adminlogin where email = '$email' and password = '$pwd';";
		$result = mysqli_query($conn, $sql);
		$resCheck = mysqli_num_rows($result);
		if($resCheck > 0) {
			while ($row = mysqli_fetch_assoc($result)) {
				header("Location: ../admin/additem.php");
			}
		} else {
			$sql1 = "select email, password, username from userlogin where email = '$email' and password = '$pwd';";
			$result1 = mysqli_query($conn, $sql1);
			$resCheck1 = mysqli_num_rows($result1);
			if($resCheck1 > 0) {
			while ($row1 = mysqli_fetch_assoc($result1)) {
				$_SESSION['username'] = $row1['username'];
				header("Location: ../user/index.php");
				} 
			} else {
			header("Location: ../login.php?result=fail");
		} 
		} 
	}
		
?>