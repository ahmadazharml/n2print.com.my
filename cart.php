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

        $cartid = $_GET['cartid2'];
        $cartpic = $_GET['image2'];
		$cartname = $_GET['name2'];
        $price = $_GET['price2'];
		$quantity = $_GET['quantity2'];
        $subtotal = $_GET['subtotal'];
        $summary = $_GET['summary2'];      
        $localip = $_GET['ipaddr'];
        $wideip = $_GET['locipaddr'];
		$clientip = $_GET['clientip'];

$stmt = $conn->prepare("SELECT * FROM cart WHERE cartid = '$cartid' AND clientip = '$clientip'");
$stmt->execute();
$row_count = $stmt->rowCount();

if($row_count > 0){

		$newquantity = $quantity + 1;		
		$newtotal = $price * $newquantity;
		
$sql = "UPDATE cart SET price = :price,
					quantity = :quantity,            
					subtotal = :subtotal
              WHERE cartid = :cartid
			  AND clientip = :clientip";
			  
$stmt = $conn->prepare($sql);                                  
$stmt->bindParam(':price', $price, PDO::PARAM_STR);   
$stmt->bindParam(':quantity', $newquantity, PDO::PARAM_STR);  
$stmt->bindParam(':subtotal', $newtotal, PDO::PARAM_STR);
$stmt->bindParam(':cartid', $cartid, PDO::PARAM_STR);
$stmt->bindParam(':clientip', $clientip, PDO::PARAM_STR);
$stmt->execute();

}else{

$stmt = $conn->prepare("INSERT INTO cart (cartid, cartpic, cartname, price, quantity, subtotal, summary, localip, wideip, clientip) 
    VALUES (:cartid, :cartpic, :cartname, :price, :quantity, :subtotal, :summary, :localip, :wideip, :clientip)");

    $stmt->bindParam(':cartid', $cartid);
	$stmt->bindParam(':cartpic', $cartpic);
	$stmt->bindParam(':cartname', $cartname);
	$stmt->bindParam(':price', $price);
    $stmt->bindParam(':quantity', $quantity);
	$stmt->bindParam(':subtotal', $subtotal);
	$stmt->bindParam(':summary', $summary);
	$stmt->bindParam(':localip', $localip);
	$stmt->bindParam(':wideip', $wideip);
	$stmt->bindParam(':clientip', $clientip);	
	$stmt->execute();

echo json_encode($response);
}
	//echo "New records created successfully";

?>