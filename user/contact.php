<html>
<head>
    <link href='https://fonts.googleapis.com/css?family=Asar' rel='stylesheet'>
 <link rel="stylesheet" type="text/css" href="mini(2).css">
<style>
body {
    font-family: 'Asar';font-size: 22px;
    background-repeat: no-repeat;
    background position: center;
    background-size:cover;
    text-align:center;
}
</style>
<title>
contact details
</title>
</head>
<body background="https://www.bpwealth.com/images/contactus.jpg">
    <?php
if(isset($_POST['submit']))
{		
   $dbServer = 'localhost';
$dbUser = 'root';
$dbPassword = '';
$dbName = 'pharmacy';
$conn = mysqli_connect($dbServer, $dbUser, $dbPassword, $dbName);
if (isset($_POST['submit'])){
		$uname = $_POST['uname'];
		$email = $_POST['email'];
		$msg = $_POST['message'];
	//	$cat = strtolower(str_replace(' ','',$category));
//$cat = str_replace(' ','',$category);
		$sql = "INSERT INTO `contact`(`name`, `email`, `message`) VALUES('$uname','$email','$msg') ";

		$res = mysqli_query($conn, $sql);
    if(!$sql)
    {
        echo mysqli_error();
    }
    
    
}	
		}
	?>
    
}
<div class="contact-title">
<center><h1> CONTACT US!</h1></center>
<center><h2> we are always ready to serve you </h2></center>
</div>
    <div class="contact-form">
        <form id="contact-form" method="post" action="index.php">
        <input form="name" type="text" name="uname" class="form-control" placeholder="Your Name" required>
        <br>
        <input name="email" type="email" name="email" class="form-control" placeholder="Your Email" required><br>
        <textarea name="message" class="form-control" name="message" placeholder="Message" row="4" required></textarea><br>
            <input type="submit" class="form-control submit" value="SEND MESSAGE" onclick="myFunction()">      
        </form>
    </div>
<!--<script>
function myFunction() {
  alert("Your message has been sent successfully!");
}
</script>-->
</body>
</html>
