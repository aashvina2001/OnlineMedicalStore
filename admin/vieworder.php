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
   <form action="php/book.php" method="POST">
     <!-- <img src="images/1.jpg"> -->
     <div class="form-inline">
       <h1 align="center">View Bookings</h1> 

       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

     </div>
    <table class="table table-striped">
      <thead>
        <tr>
          <th scope="col">Item</th>
          <th scope="col">Price</th>
          <th scope="col">Quantity</th>
          <th scope="col">Total</th>
          <th scope="col">User</th>
          <th scope="col">Date</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <?php
            $sql = "select * from booking";
            $res = mysqli_query($conn, $sql);
            $rescheck = mysqli_num_rows($res);
            if($rescheck > 0) {
              while ($row = mysqli_fetch_assoc($res)) {
                  echo '<tr>';
                    echo '<td>'.$row['item'].'</td>';
                    echo '<td>'.$row['price'].'</td>';
                    echo '<td>'.$row['quantity'].'</td>';
                    echo '<td>'.$row['total'].'</td>';
                    echo '<td>'.$row['username'].'</td>';
                    echo '<td>'.$row['date'].'</td>';
                    echo '</tr>';
              }
            }
            ?>
      </tbody>
    </table>
    <?php
            $sqlone = "select sum(total) from booking;";
            $resone = mysqli_query($conn, $sqlone);
            $rescheckone = mysqli_num_rows($resone);
            if($rescheckone > 0) {
              while ($rowone = mysqli_fetch_assoc($resone)) {
              ?>
              <div class="alert alert-success lead" role="alert">
                <b>Final Total: <i class="fas fa-rupee-sign"></i><?php echo $rowone['sum(total)']; ?></b>
              </div>
              <?php
                    
              }
            }
           ?>
   </div>
   </form>
   

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



