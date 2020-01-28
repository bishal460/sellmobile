<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json');
require_once "database.php";
$sql = "SELECT id, username, password FROM admin WHERE username = ?";
$username = trim($_POST["username"]);
$password = $_POST["password"];
        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_username);
            // Set parameters
            $param_username = $username;
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){ 
                // Store result
                mysqli_stmt_store_result($stmt);
                // Check if username exists, if yes then verify password
                if(mysqli_stmt_num_rows($stmt) == 1){                    
                    // Bind result variables
                    mysqli_stmt_bind_result($stmt, $id, $username, $hashed_password);
                    if(mysqli_stmt_fetch($stmt)){
                        if(password_verify($password, $hashed_password)){
                            // Password is correct, so start a new session
                            echo json_encode("OK");
                        } else{
                                echo json_encode("WRONG PASSWORD");        
                        }
                    }
                } else{
                    // Display an error message if username doesn't exist
                    echo json_encode("NO USERNAME");
                }
            } else{
                echo json_encode("SERVER FAILED");
            }
        }
        
        // Close statement
        mysqli_stmt_close($stmt);
    

?>
