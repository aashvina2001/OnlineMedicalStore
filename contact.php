<html>
<head>
    <link href='https://fonts.googleapis.com/css?family=Asar' rel='stylesheet'>
 <link rel="stylesheet" type="text/css" href="mini(2).css">
<style>
@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
html,body{
    background: #007bff;
}
::selection{
    color: #fff;
    background: #007bff;
}
.container{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-family: 'Poppins', sans-serif;
}
.container .mail-form{
    background: #fff;
    padding: 25px 35px;
    border-radius: 5px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 
                0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.container form .form-control{
    height: 43px;
    font-size: 15px;
}
.container .mail-form form .form-group .button{
    font-size: 17px!important;
}
.container form .textarea{
    height: 100px;
    resize: none;
}
.container .mail-form h2{
    font-size: 30px;
    font-weight: 600;
}
.container .mail-form p{
    font-size: 14px;
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
            <input type="submit" class="form-control submit" value="submit" onclick="myFunction()">      
        </form>
    </div>
<!--<script>
function myFunction() {
  alert("Your message has been sent successfully!");
}
</script>-->
</body>
</html>
