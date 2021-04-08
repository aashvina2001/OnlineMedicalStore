

<nav class="navbar navbar-expand-lg navbar-dark" style="background: linear-gradient(to right, purple, red); height: 70px;">
  <a class="navbar-brand m-0 m-lg-0" href="#"><img src="../images/logo.png" width="150px" style="margin-top: -10px; margin-left: -10px;"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active" id="add">
        <a class="nav-link" href="additem.php">Add Items <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item" id="view">
        <a class="nav-link" href="vieworder.php">View Order</a>
      </li>
      <li class="nav-item dropdown" id="cat">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          View Items
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="covid-19essentials.php">COVID 19</a>
          <a class="dropdown-item" href="HealthandNutrition.php">Health & Nutrition</a>
          <a class="dropdown-item" href="Vitamins.php">Vitamins & Supplements</a>
          <a class="dropdown-item" href="DiabeticNeeds.php">Diabetic Needs</a>
                   <a class="dropdown-item" href="dailycare.php">Daily Care</a>
          <a class="dropdown-item" href="babycare.php">Baby Care</a>
        </div>
      </li>
      <li class="nav-item" id="users">
        <a class="nav-link" href="users.php">View Users</a>
      </li>
    </ul>
  </div>
      <form class="form-inline my-2 my-lg-0">
          <a class="btn btn-dark my-2 my-sm-0" href="../login.php">LOGOUT</a>
      </form>
</nav>