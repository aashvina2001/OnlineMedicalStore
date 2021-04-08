

<!doctype html>
<html lang="en">
  <head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <?php include_once 'includes/head.php'; ?>
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <title>Home</title>
  </head>
  <body>
    <?php
    include_once 'includes/nav.php'; 
    include_once 'includes/db.inc.php';
    ?> <br>
    <a href="viewcart.php" class="btn btn-dark" style="float: right; margin-right: 20px;">View Cart <i class="fas fa-cart-plus"></i></a> <br>

    <br>
      <?php $i = 1; ?>
      
        <?php
          $sql = "select * from items where category='Homeopathy';";
          $res = mysqli_query($conn, $sql);
          while ($row = mysqli_fetch_assoc($res)) { ?>
            <div class="row" style="display: inline-flex; margin-left: 25px;"> 
              <div class="card mb-3" style="width: 400px; margin-left: 20px;">
                <div class="row no-gutters">
                  <div class="col-md-4">
                    <img src="../images/homeopathy/<?php echo $row['img']; ?>" class="card-img" alt="img" style="margin-top: 20px;">
                  </div>
                  <div class="col-md-8">
                    <div class="card-body">
                      <h5 class="card-title"><?php echo $row['name']; ?></h5>
                      <p class="card-text"><?php echo $row['description']; ?></p>
                      <!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
                      <a href="php/cart.php?id=<?php echo $row['id']; ?>" class="btn btn-success"><i class="fas fa-cart-plus"></i></a>
                      <button class="btn btn-danger btn-disabled"><?php echo 'Rs.'.$row['price']; ?></button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
           
        <?php
        $i = $i+1;
          }
        ?>
        
      
      



    <?php include_once 'includes/footer.php'; ?> 
 <script src="includes/jquery31.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
         $("#add").removeClass("active");
        $("#cat").addClass("active");
      });
    </script>
  </body>
</html>