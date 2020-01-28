<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json');
require_once "database.php";
$id= $_REQUEST['id'];
$sql = "Delete from users where id='$id'";
if(mysqli_query($link,$sql)){
    echo json_encode("success");
}else{
    echo json_encode(mysqli_error($link));
}
mysqli_close($link);

?>