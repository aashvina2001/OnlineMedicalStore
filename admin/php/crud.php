<?php

include_once '../includes/db.inc.php';

if (isset($_GET['delete'])) {
	$id = $_GET['delete'];
	$sql1 = "select * from items where id='$id'";
	$res = mysqli_query($conn, $sql1);
	$sql = "delete from items where id='$id'";
	mysqli_query($conn, $sql);
	if (mysqli_num_rows($res) > 0) {
		while ($row = mysqli_fetch_assoc($res)) {
			$category = $row['category'];
			$cat = strtolower(str_replace(' ','',$category));
			?>
			<script type="text/javascript">
				alert("Item Deleted Successfully!!");
				location.replace("../<?php echo $cat ?>.php");
			</script>
			<?php
		}
	}
}

if (isset($_GET['edit'])) {
	$id = $_GET['edit'];
	$sql = "select * from items where id='$id'";
	$res = mysqli_query($conn, $sql);
	$rescheck = mysqli_num_rows($res);
	if ($rescheck > 0) {
		while ($row = mysqli_fetch_assoc($res)) {
			echo $row['name'];
		}
	}
}
