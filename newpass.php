<!doctype html>
<html lang="en">
  <head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <?php
      include_once 'includes/head.php';
      include_once 'includes/db.inc.php'; 
    ?>
    <link rel="stylesheet" type="text/css" href="css/forgot1.css">
    <title>Login</title>
  </head>
  <body>
    <?php include_once 'includes/nav.php'; ?>

   
     <form action="php/newpass.php" method="POST">
        <div class="img">
          <img id="img1" src="images/2.jpg">
        </div>
          <div class="center two">
            <div class="form-group">
              <label for="exampleInputEmail1">Enter Password</label>
       <input type="password" class="form-control" id="exampleInputEmail1" name="password1" placeholder="Enter Password"  required>
          </div>

              <div style="display: none;">
                <input type="text" name="username" value="<?php echo $_GET['username']; ?>">
              </div>
          <div class="form-group">
              <label for="exampleInputEmail1">Confirm Password</label>
              <input type="password" class="form-control" id="exampleInputEmail1" name="password2" placeholder="Confirm Password"  required>
          </div>
              <button type="submit" class="btn btn-primary" name="confirm">Change</button>
          </div>
      </form>
      

    <?php include_once 'includes/footer.php'; ?> 
   </body>
</html>




<?php $username = $_GET['username']; ?>
