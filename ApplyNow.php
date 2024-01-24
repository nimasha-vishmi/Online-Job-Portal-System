<?php
include('form.php');

?>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="applynow.css">
  <title>Career Journey</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
 </head>
<body>
     <header>
    <div class="logo">
	<a href="#"><img src="image/logo.jpeg" class="log"></a>
	<a href="home.html" class="page-name">Career Journey</a>
	       <div class="right">
            <a href="" class="login" >Login</a>
            <a href="" class="Register" >Register</a>
            <a href=""> <img src="image/photo.png" id="prof"></a>
            </div> 
	</div> 
	   
	</header>
	
  <!--navigation bar// -->
  <nav>
    <ul class="navigation-tabs">
      <li><a href="home.html">Home</a></li>
      <li><a href="postjob.php">Post Jobs</a></li>
      <li><a href="company.html">Company</a></li>
      <li><a href="candidate.php">Candidate</a></li>
      <li><a href="aboutUs.html">About Us</a></li>
      <li><a href="Help.php">Help</a></li>
    </ul><br>
	
  </nav>
   <br>

   
  <h2>Application </h2>
  
  <img src="image/handshake.jpg" alt="hand shake" class="shake">

    <div class="form-container">
     <form action="form.php" method="POST">
         <label for="name">Name:</label><br><br>
         <input type="text" id="name" name="name"><br>
         <label for="lname">NIC number:</label><br><br>
         <input type="number" id="NIC" name="NIC" ><br><br>
         <label for="Age">Age:</label><br>
         <input type="number" id="Age" name="Age" ><br><br>
         <label for="Jtitle">Job Tiltle:</label><br>
         <input type="text" id="Jtitle" name="Jtitle" ><br><br>
  
        <?php
        
if(isset($_POST['submit']))
{
        
  $cname = $_POST['name'];
  $cnumber = $_POST['NIC'];
  $cage = $_POST['Age'];
  $ctitle = $_POST['Jtitle'];

  $sql = "INSERT INTO application (Name,NICnumber,Age,JobTitle)values ('$cname',  '$cnumber', ' $cage',  '$ctitle')";

  

  $result=mysqli_query($con,$sql);
  if($result){
      echo "data inserted successfully";
     
  }
  else{

      die(mysqli_error($conn));
  }


}?>

         <input type="submit" value="Submit" name="submit">
		 
     </form> 
    </div>
<p>Thanks For Apply to Us.</p>


</body>
</html>

