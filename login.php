<HTML XMLns="http://www.w3.org/1999/xHTML">
<head>
	<title>Client Login</title>
</head>
<body>
	<h1>Client Login</h1>
	<?php
		//Start Session
		session_start();
	
		//If login has been unsucessfully attempted, display error message.
		if(isset($_SESSION["login"])) {
			 if($_SESSION["login"] == "false") {
				//Display an error message and unset session variable (so the message won't be displayed until another unsuccessful login is attempted).
				echo "<p>The email address or password is incorrect. Please try again.</p>";
				unset($_SESSION["login"]);
			 }
		}
	?>
	<form action="login-do.php" method="post">
		Username: <input type="text" id="email"><br />
		Password: <input type="password" id="password"><br />
		<input type="submit">
	</form>
	<div id="result"></div>
</body>