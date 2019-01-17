<?php
	//Check user is logged in
	session_start();
	//TODO: Add authentication Check
	$_SESSION["login"] = "false";
	header( "Location: login.php" );
?>