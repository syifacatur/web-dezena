<?php  

error_reporting(0);

//Database Configuration
$db_name 	= "web-dezena";
$host		= "localhost";
$username	= "root";
$password	= "";

//make connection to database
$conn 		= mysqli_connect($host,$username,$password,$db_name) or die("Database connection error!");


?>