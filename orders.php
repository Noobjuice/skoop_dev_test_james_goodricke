<HTML XMLns="http://www.w3.org/1999/xHTML">
<?php
	//Check user is logged in
	include "login-check.php";
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