<?php
	//Used to indicate user exists in system.
	$userFound = false;
	//This error is displayed on the login page if there's an error processing the request.
	$errorMsg = "There was an error processing your request. Please try again.";
	$noUserMsg = "The email address or password is incorrect. Please try again.";
	
	//Database Credentials
	include "db-login.php";
	$dbTableName = "users";
	
	//Function to return user to the login page with an error message.
	function reject($message) {
		$_SESSION["loginError"] = $message;
		mysqli_close($conn);
		header( "Location: login.php" );
	}
	

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
	
	//Query to be sent to server
	$statement = "SELECT * FROM ".$dbTableName." WHERE email = ? && password = PASSWORD(?)";
		
	//Prepare Query
	if($query = $conn->prepare($statement)){
		$query->bind_param('ss', $email, $password);
		
		//Execute Query
		$query->execute();
		
		//If query successful, check if username and password is correct.
		if($query->errno == 0) {
			$query->store_result();
			$query->bind_result($id, $queryEmail, $queryPassword);
			
			if ($query->num_rows > 0){
				$userFound = true;			
			}
		}
		//If query unsuccessful, return to login page
		else{
			reject($errorMsg);
		}
	}
	//If query can't be prepared, return to login screen.
	else{
		reject($errorMsg);
	}
	
	//If user exists, log user in and go to past orders page
	if($userFound == true){
		$_SESSION["user"] = $email;
		mysqli_close($conn);
		header( "Location: orders.php" );
	}
	//If user doesn't exists, go to login page
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