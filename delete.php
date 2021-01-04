<?php

$dbhost = "localhost";
$dbuser = "iparwelf";
$dbpass = "V22R2q0tkw";
$dbname = "iparwelf_n2print";
$dbtype = "mysql";
		
        mysql_connect($dbhost, $dbuser, $dbpass);
        mysql_select_db($dbname) or die(mysql_error());

$id = $_POST['id'];

$qry = "DELETE FROM cart WHERE cartid ='$id'";
$result = mysql_query($qry);
if(isset($result)) {
   echo "YES";
} else {
   echo "NO";
}
?>