<?php
highlight_file(__FILE__);
@require_once("db.php");
@require_once("flag.php");

function filter($str) {
	if(strstr($str, " ") || strstr($str, "--"))
		return "";
	else
		return $str;
}

if(!isset($_GET["user"]) || !isset($_GET["pass"]))
	die("No inputs");
$user = filter($_GET["user"]);
$pass = filter($_GET["pass"]);

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
