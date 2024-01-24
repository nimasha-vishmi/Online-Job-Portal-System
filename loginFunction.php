<?php
session_start();

require 'form.php'; // Assuming you have established the database connection in connection.php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];
    echo $email; 

    if (!empty($email) && !empty($password) ) {
        $query = "SELECT * FROM registration WHERE email = '$email' LIMIT 1";
        $result = mysqli_query($conn, $query);

        if ($result && mysqli_num_rows($result) > 0) {
            $user_data = mysqli_fetch_assoc($result);
            $stored_password = $user_data['password'];

            if (password_verify($password, $stored_password)) {
                $_SESSION['email'] = $user_data['email'];
                header("Location: updateForm.php");
                exit();
            } else {
                $errorMessage = "Invalid password";
                header("Location: loginPage.php?error=" . urlencode($errorMessage));
                exit();
            }
        } else {
            $errorMessage = "Invalid username";
            header("Location: loginPage.php?error=" . urlencode($errorMessage));
            exit();
        }
    } else {
        $errorMessage = "Wrong username or password";
        header("Location: loginPage.php?error=" . urlencode($errorMessage));
        exit();
    }
}
?>
