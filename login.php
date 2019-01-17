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
		if(isset($_SESSION["loginError"])) {
			//Display an error message and unset session variable (so the message won't be displayed until another unsuccessful login is attempted).
			echo "<p>".$_SESSION["loginError"]."</p>";
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