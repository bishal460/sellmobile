<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json');
require_once "database.php";

$banner=$_FILES['image']['name']; 
 $expbanner=explode('.',$banner);
 $bannerexptype=$expbanner[1];
 date_default_timezone_set('Australia/Melbourne');
 $date = date('m/d/Yh:i:sa', time());
 $rand=rand(10000,99999);
 $encname=$date.$rand;
 $bannername=md5($encname).'.'.$bannerexptype;
 $bannerpath="uploads/mobile/".$bannername;
 move_uploaded_file($_FILES["image"]["tmp_name"],$bannerpath);
 $mobile_name = $_POST['mobile_name'];  
    $description = $_POST['description'];  
    $price = $_POST['price'];  
    $condition = $_POST['condition'];  
    $cpu = $_POST['cpu'];  
    $ram = $_POST['ram'];  
    $gpu = $_POST['gpu'];  
    $weight = $_POST['weight'];  
    $os = $_POST['os'];  
    $mobile_image = $bannername; 
    $latitude = $_POST['latitude'];
    $longitude = $_POST['longitude'];
    $imei = $_POST['imei'];
    $user = $_POST['user'];
 $sql = "INSERT INTO mobile (mobile_name, description, price, condition1, cpu, ram,gpu,weight,os,mobile_image,latitude,longitude,imei,user) VALUES ('$mobile_name', ' $description','$price','$condition','$cpu','$ram','$gpu','$weight','$os','$mobile_image','$latitude','$longitude','$imei','$user')";
 if(mysqli_query($link,$sql)){
     echo json_encode("success");
 }else{
     echo json_encode(mysqli_error($link));
 }

// Close connection
mysqli_close($link);

?>
