<?php
function pretty_dump($var) {
	echo "<pre>";
	var_dump($var);
	echo "</pre>";
}

function redirect($url, $statusCode=303)
{
   header("Location: " . $url, true, $statusCode);
   die();
}

?>