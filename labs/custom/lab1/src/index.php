<?php
highlight_file(__FILE__);
@require_once("db.php");
@require_once("flag.php");

$user = $_GET["user"];
$pass = $_GET["pass"];

if(!isset($user) || !isset($pass))
	die("No inputs");

$sql = "SELECT user from users WHERE user='" . $user . "' AND pass='" . $pass . "';";
if(isset($_GET["debug"]) && $_GET["debug"] == "1")
	printf("<pre>%s</pre>", $sql);
if(!$res = mysqli_query($conn, $sql))
	die(mysqli_error($conn));

if($res->num_rows == 1) {
	$row = $res->fetch_assoc();
	if($row["user"] == "admin")
		die($flag);
	else
		die(sprintf("You (%s) has no permission.", $row["user"]));
}

die("Nope");
