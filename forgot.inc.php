
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

   
     <form action="php/forgot1.inc.php" method="POST">
        <div class="img">
          <img id="img1" src="images/4.jpg">
        </div>
          <div class="center two">

              <?php
                if (isset($_POST['ehelp'])) {
                  $email = $_POST['email'];
                  $sql = "select * from userlogin where email = '$email';";
                  $res = mysqli_query($conn, $sql);
                  while ($row = mysqli_fetch_assoc($res)) { ?>
              <div class="form-group">
                <label for="exampleInputEmail1">Security Question</label>
                <input type="email" class="form-control" id="exampleInputEmail1" name="secque" placeholder="<?php echo $row['secque']; ?>" disabled>
              </div> 
              <div style="display: none;">
                <input type="text" name="username" value="<?php echo $row['username']; ?>">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Your Answer</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="answer" placeholder="Answer"  required>
              </div>
              <button type="submit" class="btn btn-primary" name="submit">Next</button>
                  <?php
                  }
                }
              ?>  
          </div>
      </form>

    <?php include_once 'includes/footer.php'; ?> 
   </body>
</html>


