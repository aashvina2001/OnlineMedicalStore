<?php
if (isset($_POST['submit'])) {
	$file = $_FILES['file'];
	
	$filename = $_FILES['file']['name'];
	$filetmpname = $_FILES['file']['tmp_name'];
	$filesize = $_FILES['file']['size'];
	$fileerror = $_FILES['file']['error'];
	$filetype = $_FILES['file']['type'];

	$fileext = explode('.', $filename);
	$fileactext = strtolower(end($fileext));
	$allowed = array('jpg', 'jpeg', 'png', 'pdf');
	if (in_array($fileactext, $allowed)) {
		if ($fileerror === 0) {

		} else {
			echo "Error in upload";
		}
	} else {
		echo "File Not Supported";
	}
} 