<!doctype html>
<html lang="en">
  <head>
    

    <?php include_once 'includes/head.php';
       include_once 'includes/db.inc.php'; ?>
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
    <?php
      if(isset($_POST['update'])) {
        $id = $_POST['id'];
        $name = $_POST['name'];
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        $address = $_POST['address'];

        $sql1 = "update userlogin set username='$name', email='$email', phone='$phone', address='$address' where id='$id';";
        $result1 = mysqli_query($conn, $sql1);
        if (!$result1) {
          ?>
            <div class="alert alert-danger" role="alert">
              Error in Updating
            </div>
          <?php
      } else {
        ?>
            <div class="alert alert-success" role="alert">
              Profile Updated
            </div>
          <?php
    }
    }
    ?>
    <h1 align="center">Update Profile</h1> <br>
    <div class="row justify-content-center">
    <form action="editprofile.php" method="POST">
            <div class="row justify-content-center">

    <div class="center">
       <?php
      $user = $_SESSION['username'];
      $sql = "select * from userlogin where username='$user';";
      $res = mysqli_query($conn,$sql);
      if (mysqli_num_rows($res) > 0) {
          while ($row = mysqli_fetch_assoc($res)) {
              ?>
            <div class="form-group">
              <label>Username</label>
              <input type="text" class="form-control" id="itemname" name="id" value="<?php echo $row['id'];?>" readonly>
              </div>
            <div class="form-group">
              <label>Username</label>
              <input type="text" class="form-control" id="itemname" name="name" value="<?php echo $row['username']; ?>">
              </div>
            <div class="form-group">
              <label>Email</label>
              <input type="text" class="form-control" id="price" name="email" value="<?php echo $row['email']; ?>">
              </div>
               <div class="form-group">
              <label>Phone</label>
              <input type="text" class="form-control" id="price" name="phone" value="<?php echo $row['phone']; ?>" >
              </div>
            <div class="form-group">
              <label>Address</label>
              <textarea type="text" class="form-control" id="desc" name="address" style="width: 350px;"><?php echo $row['address']; ?></textarea>
            </div>
            <?php
          }
        }
            ?>

            <button type="submit" class="btn btn-danger" name="update">Update Profile</button>
            <br><br><br>
          </div>  
        </form>
      </div>

    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <script>
      $(document).ready(function() {
        $("#add").removeClass("active");
        $("#edit").addClass("active");
      });
    </script>
  </body>
</html>