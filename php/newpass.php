  <?php 
      include_once '../includes/db.inc.php'; 
      if(isset($_POST['confirm'])) {
        $pass1 = $_POST['password1'];
        $pass2 = $_POST['password2'];
        $username = $_POST['username'];
        if ($pass1 != $pass2) { ?>
          <script type="text/javascript">
            alert("Passwords didnt match!!");
          </script>
        <?php
      } else {
        $sql = "update userlogin set password = '$pass1' where username = '$username';";
        mysqli_query($conn, $sql);
        header("Location: ../login.php");
    }
    }
    ?>