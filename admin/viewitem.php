<!doctype html>
<html lang="en">
  <head>
   <?php 
   include_once 'includes/db.inc.php';
   include_once 'includes/head.php';
   ?>
    <title>Our Members</title>
  </head>
  <body>
   <?php include_once 'includes/nav.php'; ?>
   <div class="container">
   <form>
     <!-- <img src="images/1.jpg"> -->
     <h1 align="center">View Items</h1>
    <table class="table table-striped">
      <thead>
        <tr>
          <th scope="col">Name</th>
          <th scope="col">Category</th>
          <th scope="col">Price</th>
             <th scope="col">quantity</th>
          <th scope="col">Description</th>
          <th scope="col">Stock</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <?php
            $sql = "select * from items;";
            $res = mysqli_query($conn, $sql);
            $rescheck = mysqli_num_rows($res);
            if($rescheck > 0) {
              while ($row = mysqli_fetch_assoc($res)) {
                  echo '<tr>';
                    echo '<td>'.$row['name'].'</td>';
                    echo '<td>'.$row['category'].'</td>';
                    echo '<td>'.$row['price'].'</td>';
                    echo '<td>'.$row['quantity'].'</td>';
                    echo '<td>'.$row['quantity'].'</td>';
                    echo '<td>'.$row['stock'].'</td>';
                    ?>

                    <td><a href="php/crud.php?delete=<?php echo $row['id']; ?>?cat=<?php echo $row['category']; ?>" class="btn btn-danger btn-sm" name="deleteloc">Delete</a></td>
                    <?php
                  echo '</tr>';
              }
            }
           ?>
      </tbody>
    </table>
        <!-- <button class="btn btn-success"><a href="bedroom.php" style="color: white;">Add More</a></button> -->

   </form>
   </div>
    <?php include_once 'includes/footer.php'; ?>
 <script src="includes/jquery31.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
         $("#add").removeClass("active");
        $("#view").addClass("active");
      });
    </script>
  </body>
</html>





















