<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json');
require_once "database.php";

$user = $_POST['email'];
$postid = $_POST['postid'];
$bid_amount = $_POST['bid_amount'];
$sql = "insert into bid(email,post_id,bid_amount) values('$user','$postid','$bid_amount')";
if(mysqli_query($link,$sql)){
    echo json_encode("success");
}else{
    echo json_encode(mysqli_error($link));
}
// Close connection
mysqli_close($link);

?>