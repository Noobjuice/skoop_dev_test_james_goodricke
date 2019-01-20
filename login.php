<!DOCTYPE html>
<head>
	<title>Client Login</title>
	<link rel="stylesheet" href="styles/styles.css" />
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	
</head>
<body>
	<h1>Client Login</h1>
	<?php
		//Start Session
		session_start();
		
		//If user is already logged in, take them to orders page.
		if(isset($_SESSION["user"])) {
			header( "Location: orders.php" );
		}
	
	
		//If login has been unsucessfully attempted, display error message.
		if(isset($_SESSION["loginError"])) {
			//Display an error message and unset session variable (so the message won't be displayed until another unsuccessful login is attempted).
			echo "<p class='error-message'>".$_SESSION["loginError"]."</p>";
			unset($_SESSION["loginError"]);
		}
	?>
	<form action="login-do.php" method="post">
		<input type="email" name="email" placeholder="email"> <br />
		<input type="password" name="password" placeholder="password"> <br />
		<input type="submit">
	</form>
	<div id="result"></div>
</body>