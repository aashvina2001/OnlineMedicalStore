<?php 
	include_once '../includes/db.inc.php';
	if (isset($_POST['add'])) {
		$itemname = $_POST['name'];
		$category = $_POST['category'];
		$price = $_POST['price'];
		$stock = $_POST['stock'];
		$desc = $_POST['desc'];
		$img = $_POST['img'];
		$cat = strtolower(str_replace(' ','',$category));
//$cat = str_replace(' ','',$category);
		$sql = "insert into items (name, category, price, description, stock, img) values('$itemname', '$category', '$price', '$desc', '$stock', '$img');";
		$res = mysqli_query($conn, $sql);
		if (!$res) {
			header("Location: ../additem.php?result=fail");
		} else {
			?>
			<script type="text/javascript">
				alert("Item Added Successfully!!");
				location.replace("../<?php echo $cat ?>.php");
			</script>
			<?php
		}
	}

	if (isset($_POST['update'])) {
		$id = $_POST['id'];
		$itemname = $_POST['name'];
		$category = $_POST['category'];
		$price = $_POST['price'];
		$stock = $_POST['stock'];
		$desc = $_POST['desc'];
		$img = $_POST['img'];
		$cat = strtolower(str_replace(' ','',$category));
		
		$sql = "update items set name='$itemname', category='$category', price='$price', description='$desc', stock='$stock', img='$img' where id='$id';";
		$res = mysqli_query($conn, $sql);
		if (!$res) {
			header("Location: ../crud.php?result=fail");
		} else {
			?>
			<script type="text/javascript">
				alert("Item Updated Successfully!!");
				location.replace("../<?php echo $cat ?>.php");
			</script>
			<?php
		}
	}
?>