<!doctype html>
<html lang="en">
  <head>

    <?php include_once 'includes/head.php'; ?>
    <?php include_once 'includes/footer.php'; ?> 
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <linkrel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/loc.css">
    <title>Location</title>
  </head>
  <body>
    <?php include_once 'includes/nav.php'; ?>
    <h1 align="center">Add Items</h1> <br>
    <div class="row justify-content-center">
    <form action="php/additem.inc.php" method="POST">
    <div class="center">
      <div class="form-group">
        <label>Item Name</label>
        <input type="text" class="form-control" id="itemname" name="name" placeholder="Item Name">
        </div>
      <div class="form-group">
         <label>Category</label>
          <select class="form-control" name="category">
               <option>covid-19essentials</option>
               <option>HealthandNutrition</option>
            <option>Vitamins</option>
            <option>DiabeticNeeds </option>
            <option>DailyCare</option>
            <option>BabyCare</option>
        </select>
      </div>
      <div class="form-group">
        <label>Price</label>
        <input type="text" class="form-control" id="price" name="price" placeholder="Price per Item">
        </div>
        <div class="form-group">
        <label>Quantity</label>
        <input type="text" class="form-control" id="quantity" name="quantity" placeholder="quantity">
        </div>
      <div class="form-group">
        <label>Image</label>
        <input type="file" class="form-control" id="img" name="img" placeholder="Choose Image">
        </div>
      <div class="form-group">
        <label>Stock</label>
          <select class="form-control" name="stock">
            <option>In Stock</option>
            <option>Out of Stock</option>
            <option>Coming Soon</option>
        </select>
      </div>
      <div class="form-group">
        <label>Description</label>
        <textarea type="text" class="form-control" id="desc" name="desc" placeholder="Description" style="width: 300px;"></textarea>
      </div>
      <button type="submit" class="btn btn-danger" name="add">Add Items</button>
    </div>  
  </form>
</div>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <script>
      $(document).ready(function() {
              });
    </script>
  </body>
</html>