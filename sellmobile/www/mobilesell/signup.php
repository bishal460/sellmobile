<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json');
require_once "database.php";
$sql = "INSERT INTO users (username, password) VALUES (?, ?)";
            
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "ss", $param_username, $param_password);
            
            // Set parameters
            $param_username = trim($_POST["username"]);
            $password = trim($_POST["password"]);
            $param_password = password_hash($password, PASSWORD_DEFAULT); // Creates a password hash
            
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                echo json_encode("done");
            } else{
                echo json_encode("Something went wrong. Please try again later");
            }
        }
         
        // Close statement
        mysqli_stmt_close($stmt);
    // Close connection
    mysqli_close($link);


 ?>
