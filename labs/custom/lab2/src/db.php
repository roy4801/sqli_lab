<?php
$host   = "mysql";
$root_user   = "root";
$root_passwd = "YmmRTo8R70QX3PuWlkS5";
$user = "lab2";
$passwd = "lab2";
$dbname = "labs";

$conn = mysqli_connect($host, $user, $passwd, $dbname);
if(!$conn) {
	die("Failed to connect MySQL server: " . mysqli_connect_error());
}
?>