<HTML XMLns="http://www.w3.org/1999/xHTML">
<?php
	//Check user is logged in
	session_start();
	//TODO: Add authentication Check
	$_SESSION["login"] = "false";
	header( "Location: login.php" ) ;
	
	
	//TODO: Add actual printout of orders.
?>
<head>
	<title>Past Orders</title>
</head>
<body>
	<h1>Past Orders</h1>
	<?php
		echo $_SESSION["login"];
	?>
</body>