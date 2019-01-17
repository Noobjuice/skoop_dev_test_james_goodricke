<?php
	session_start();
	
	//set location to login page.
	$gotoLogin = "Location: login.php";
	
	//If not logged in, redirect to login page.
	if(!isset($_SESSION["login"])) {
		header( $gotoLogin );
	}
	else if($_SESSION["login"] == "false") {
		header( $gotoLogin );
	}
?>