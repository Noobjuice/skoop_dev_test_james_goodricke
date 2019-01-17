<?php
	session_start();
		
	//If not logged in, redirect to login page.
	if(!isset($_SESSION["user"])) {
		header( "Location: login.php" );
	}
?>