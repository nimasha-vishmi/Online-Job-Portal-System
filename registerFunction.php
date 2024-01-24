<?php
    require 'form.php';

    // Assuming you have established the database connection in $con variable

    if (isset($_POST['submit'])) {
        $crname = $_POST['Name'];
        $cremail = $_POST['email'];
        $crmobile = $_POST['mobile'];
        $crpassword = $_POST['Password'];
        $crrpassword = $_POST['password_repeat'];

        $select = "SELECT * FROM registration WHERE email='$cremail'";

        $result = mysqli_query($conn, $select);

        if (mysqli_num_rows($result) > 0) {
            $errorMessage = "Email Already Exists";
            header("Location: registrationForm.php?error=" . urlencode($errorMessage));
            exit();
        }

        else if ($crpassword != $crrpassword) {
            $errorMessage = "Password does not match";
            header("Location: registrationForm.php?error=" . urlencode($errorMessage));
            exit();
        }else{
            $sql = "INSERT INTO registration(name, email, PhoneNumber, password, repassword) VALUES ('$crname', '$cremail', '$crmobile', '$crpassword', '$crrpassword')";
            $result = mysqli_query($conn, $sql);
            if ($result) {
                echo ("<script>location.href='loginPage.php'</script>");
            } else {
                die(mysqli_error($conn));
            }

        }
       
    }
?>

     