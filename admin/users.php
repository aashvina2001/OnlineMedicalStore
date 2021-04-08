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
     <h1 align="center">View Users</h1>
    <table class="table table-striped">
      <thead>
        <tr>
          <th scope="col">Name</th>
          <th scope="col">E-Mail</th>
          <th scope="col">Address</th>
          <th scope="col">Phone</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <?php
            $sql = "select * from userlogin;";
            $res = mysqli_query($conn, $sql);
            $rescheck = mysqli_num_rows($res);
            if($rescheck > 0) {
              while ($row = mysqli_fetch_assoc($res)) {
                  echo '<tr>';
                    echo '<td>'.$row['username'].'</td>';
                    echo '<td>'.$row['email'].'</td>';
                    echo '<td>'.$row['address'].'</td>';
                    echo '<td>'.$row['phone'].'</td>';
                  echo '</tr>';
              }
            }
           ?>
      </tbody>
    </table>

   </form>
   </div>
    <?php include_once 'includes/footer.php'; ?>
 <script src="includes/jquery31.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
         $("#home").removeClass("active");
        $("#users").addClass("active");
        $("#btn1").click(function() {
          $(".one").fadeOut(300).delay(500);
           $(".two").fadeIn(300);
        });
      });
    </script>
  </body>
</html>





















