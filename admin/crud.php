<!doctype html>
<html lang="en">
  <head>
    

    <?php include_once 'includes/head.php'; ?>
    <?php include_once 'includes/footer.php'; ?> 
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/loc.css">
    <title>Location</title>
  </head>
  <body>
    <?php include_once 'includes/nav.php'; ?>
    <h1 align="center">Update Items</h1> <br>
    <div class="row justify-content-center">
    <form action="php/additem.inc.php" method="POST">

    <?php

    include_once '../includes/db.inc.php';

    if (isset($_GET['edit'])) {
      $id = $_GET['edit'];
      $sql = "select * from items where id='$id'";
      $res = mysqli_query($conn, $sql);
      $rescheck = mysqli_num_rows($res);
      if ($rescheck > 0) {
        while ($row = mysqli_fetch_assoc($res)) {
        ?>

    <div class="center">
      <div class="form-group">
        <label>Item ID</label>
        <input type="text" class="form-control" id="id" name="id" value="<?php echo $row['id']; ?>" readonly>
        </div>
      <div class="form-group">
        <label>Item Name</label>
        <input type="text" class="form-control" id="itemname" name="name" value="<?php echo $row['name']; ?>">
        </div>
      <div class="form-group">
         <label>Category</label>
          <select class="form-control" name="category">
            <option><?php echo $row['category']; ?></option>
            <option>Health & Nutrition</option>
            <option>Vitamins & Supplements </option>
            <option>Diabetic Needs </option>
              <option> Personal Care</option>
            <option>Daily Care</option>
            <option>Baby Care</option>
        </select>
      </div>
      <div class="form-group">
        <label>Price</label>
        <input type="text" class="form-control" id="price" name="price" value="<?php echo $row['price']; ?>">
        </div>
      <div class="form-group">
        <label>Image</label>
        <input type="file" class="form-control" id="img" name="img" value="<?php echo $row['img']; ?>">
        </div>

      <div class="form-group">
        <label>Stock</label>
          <select class="form-control" name="stock">
            <option><?php echo $row['stock']; ?></option>
            <option>In Stock</option>
            <option>Out of Stock</option>
            <option>Coming Soon</option>
        </select>
      </div>
        <div class="form-group">
        <label>Quantity</label>
        <input type="text" class="form-control" id="quantity" name="quantity" placeholder="quantity">
        </div>
      <div class="form-group">
        <label>Description</label>
        <textarea type="text" class="form-control" id="desc" name="desc" style="width: 300px;"><?php echo $row['description']; ?></textarea>
      </div>

      <button type="submit" class="btn btn-danger" name="update">Update Item</button>
    </div>  
    <?php
        }
      }
    }
    ?>
  </form>
</div>

    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <script>
      $(document).ready(function() {
         $("#add").removeClass("active");
        $("#cat").addClass("active");
        
      });
    </script>
  </body>
</html>

