<!DOCTYPE html>
<html>
<head>
	<title>Image</title>
</head>
<body>
	<form action="image.php" method="POST">
		<input type="file" name="file">
		<button name="btn" type="submit">Submit</button>
	</form>
	<?php 
		$str = "Hello World";
		echo $str;
		echo strtolower(str_replace(' ','',$str));
	?>
</body>
</html>