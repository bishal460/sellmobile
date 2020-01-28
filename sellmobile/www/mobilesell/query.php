<?php //Query 

 //INSERT 
 $query = " INSERT INTO mobile ( mobile_name, description, price, condition, cpu, ram, gpu, weight, os, camera, sensors, battery, mobile_image )  VALUES ( '$mobile_name', '$description', '$price', '$condition', '$cpu', '$ram', '$gpu', '$weight', '$os', '$camera', '$sensors', '$battery', '$mobile_image' ) "; 
 $result = mysql_query($query); 

 if( $result )
 {
 	echo 'Success';
 }
 else
 {
 	echo 'Query Failed';
 }

 // //SELECT 
 // $query = " SELECT mobile_name, description, price, condition, cpu, ram, gpu, weight, os, camera, sensors, battery, mobile_image FROM mobile "; 
 // $result = mysql_query($query); 

 // if( $result )
 // {
 // 	echo 'Success';
 // }
 // else
 // {
 // 	echo 'Query Failed';
 // }

 // //UPDATE 
 // $query = " UPDATE mobile SET  mobile_name = '$mobile_name',  description = '$description',  price = '$price',  condition = '$condition',  cpu = '$cpu',  ram = '$ram',  gpu = '$gpu',  weight = '$weight',  os = '$os',  camera = '$camera',  sensors = '$sensors',  battery = '$battery',  mobile_image = '$mobile_image' WHERE col = val "; 
 // $result = mysql_query($query); 

 // if( $result )
 // {
 // 	echo 'Success';
 // }
 // else
 // {
 // 	echo 'Query Failed';
 // }

 // //DELETE 
 // $query = " DELETE FROM mobile WHERE col = val "; 
 // $result = mysql_query($query); 

 // if( $result )
 // {
 // 	echo 'Success';
 // }
 // else
 // {
 // 	echo 'Query Failed';
 // }

?>