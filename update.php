<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");	

$hostname = "localhost";
$username = "iparwelf";
$password = "V22R2q0tkw";
$database = "iparwelf_n2print";
$dbtype = "mysql";

define("HOST", $hostname);
define("USER", $username);
define("PASS", $password);
define("DB", $database);
define("DBTYPE", $dbtype);

try{
	$conn = new PDO(DBTYPE.":host=".HOST.";dbname=".DB, USER, PASS);
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	//echo "Connected succesfully";
}
catch(PDOException $e){
	echo "Connection failed: " . $e->getMessage();	
}

	$price = $_POST['price'];
	$quantity = $_POST['quantity'];	
    $subtotal = $_POST['subtotal'];
	$cartid = $_POST['id'];
	$clientip = $_POST['clientip'];
	
$sql = "UPDATE cart SET price = :price,
					quantity = :quantity,            
					subtotal = :subtotal
              WHERE cartid = :cartid
			  AND clientip = :clientip";
			  
$stmt = $conn->prepare($sql);                                  
$stmt->bindParam(':price', $price, PDO::PARAM_STR);   
$stmt->bindParam(':quantity', $quantity, PDO::PARAM_STR);  
$stmt->bindParam(':subtotal', $subtotal, PDO::PARAM_STR);
$stmt->bindParam(':cartid', $cartid, PDO::PARAM_STR);
$stmt->bindParam(':clientip', $clientip, PDO::PARAM_STR);
$stmt->execute();

echo json_encode($response);

	//echo "New records created successfully";

?>
