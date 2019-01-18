<?php
	//Used to indicate user exists in system.
	$userFound = false;
	//This error is displayed on the login page if there's an error processing the request.
	$errorMsg = "There was an error processing your request. Please try again.";
	$noUserMsg = "The email address or password is incorrect. Please try again.";
	
	//Database Credentials
	$serverName  = "localhost";
	$dbName = "skoop";
	$dbUsername = "root";
	$dbPassword = "";
	$dbTableName = "users";
	
	//Function to return user to the login page with an error message.
	function reject($message) {
		$_SESSION["loginError"] = $message;
		mysqli_close($conn);
		header( "Location: login.php" );
	}
	
	//Check user is logged in
	session_start();
	
	//Check if user input exists.
	if((isset($_POST['email']) && isset($_POST['password']))) {
		//Sanatise Input
		try {
			$email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
			$password = filter_var($_POST['password'], FILTER_SANITIZE_STRING);
		}
		//If input fails to sanitise, return to login page
		catch(Exception $e) {
			reject($errorMsg);
		}
		
	}
	//If user input does not exist, return to login page
	else{
		reject($errorMsg);
	}
	

		
	// Create connection
	$conn = new mysqli($serverName, $dbUsername, $dbPassword, $dbName);
	if ($conn->connect_error) {
		reject($errorMsg);
	}
	
	//Query to be sent to Server
	$statement = "SELECT * FROM ".$dbTableName." WHERE email = ?";
		
	//Prepare Query
	if($query = $conn->prepare($statement)){
		$query->bind_param('s', $email);
		
		//Execute Query
		$query->execute();
		
		//If Query Successful, check if username and password is correct.
		if($query->errno == 0) {
			$query->store_result();
			$query->bind_result($id, $queryEmail, $queryPassword);
			
			while($query->fetch()){
				if ($email == $queryEmail && $password == $queryPassword){
					$userFound = true;
					break;
				}
			}
		}
		else{
			reject($errorMsg);
		}
	}
	else{
		reject($errorMsg);
	}
	
	if($userFound == true){
		$_SESSION["user"] = $email;
		mysqli_close($conn);
		header( "Location: orders.php" );
	}
	else{
		reject($noUserMsg);
	}
?>
<!--This will only be displayed if the page doesn't automatically redirect.-->
<HTML XMLns="http://www.w3.org/1999/xHTML">
<head>
	<title>Login</title>
</head>
<body>
	<h1>Login Successful</h1>
	<p>If you aren't automatically redirected, <a href="orders.php">click here</a>.</p>
</body>