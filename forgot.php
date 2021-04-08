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

   
     <form action="forgot.inc.php" method="POST">
        <div class="img">
          <img id="img1" src="images/4.jpg">
        </div>
          <div class="center two">
            <div class="form-group">
              <label for="exampleInputEmail1">Email address</label>
              <input type="email" class="form-control" id="exampleInputEmail1" name="email" placeholder="Enter email"  required>
              <small id="emailHelp" class="form-text text-muted" name="ehelp">We'll never share your email with anyone else.</small>
          </div>
              <button type="submit" class="btn btn-primary" name="ehelp">Next</button>
          </div>
      </form>
 
    <?php include_once 'includes/footer.php'; ?> 
   </body>
</html>





<!-- 
<div class="form-group">
             <?php
                // if (isset($_POST['ehelp'])) {
                //   $email = $_POST['email'];
                //   $sql = "select * from userlogin where email = '$email';";
                //   $res = mysqli_query($conn, $sql);
                //   $rescheck = mysqli_num_rows($res);
                //   if($rescheck > 0) {
                //     while ($row = mysqli_fetch_assoc($res)) {
                //       echo '<label>'.$row['secque'].'</label>';
              //       }
              //     }
              // }
                ?>
                <input type="text" class="form-control" id="answer" name="answer" placeholder="Enter answer">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
          </div>
          <button type="submit" class="btn btn-primary" name="login">Change Password</button>
        </div>   -->
