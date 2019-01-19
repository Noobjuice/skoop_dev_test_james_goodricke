<HTML XMLns="http://www.w3.org/1999/xHTML">
<?php
	//Check user is logged in
	include "login-check.php";
	include "concat-address.php";
?>
<head>
	<title>Order Details</title>
	<link rel="stylesheet" href="/styles/styles.css">
</head>
<body>
<h1>Order Details</h1>
<?php

	//Database Credentials
	$serverName  = "localhost";
	$dbName = "skoop";
	$dbUsername = "root";
	$dbPassword = "";
	
	//This message is displayed to the user if there's an error with the database query.
	$errorMessage = "<p>Something went wrong connecting to the server. Please try refreshing the page, or contact your system administrator.</p>";
	
	// Create connection
	$conn = new mysqli($serverName, $dbUsername, $dbPassword, $dbName);
	//If connection error, notify the user.
	if ($conn->connect_error) {
		echo $errorMessage;
	}
	//If no connection error, fetch and display data.
	else{
		//ORDER DETAILS
		
		//Query to be sent to Server
		$statement = "SELECT orders.name, orders.address_line_one, orders.address_line_two, orders.suburb, orders.state, orders.postcode, orders.country, products.name 
		FROM orders INNER JOIN products ON orders.product_code = products.code
		WHERE orders.id = ".$_GET["id"].";";
			
		//Prepare and execute Query
		if($query = $conn->prepare($statement)){

			$query->execute();
			
			//If Errors exist, report to user
			if($query->errno != 0) {
				echo $errorMessage;
			}
			//If no errors, display address and product name.
			else {			
				//Store and bind results
				$query->store_result();
				$query->bind_result($customerName, $address_line_one, $address_line_two, $suburb, $state, $postcode, $country, $itemName);
				
				while($query->fetch()){
					$fullAddress = $customerName.", <br/>".concatenateAddress($address_line_one, $address_line_two, $suburb, $state, $postcode, $country, true);
					echo "<strong>Address:</strong><br/>".$fullAddress."<br/><br/>";
					echo "<strong>Ordered Item:</strong><br/>".$itemName;
				}
			}
			//PREVIOUS ORDERS
			echo"<h2>Previous Orders</h2>";
			
			//Query to be sent to Server
			$statement = "SELECT orders.id, products.name
			FROM orders INNER JOIN products ON orders.product_code = products.code
			WHERE orders.name = '".$customerName."';";
			
			//Prepare and execute Query
			if($query = $conn->prepare($statement)){
	
				$query->execute();
				
				//If Errors exist, report to user
				if($query->errno != 0) {
					echo $errorMessage;
				}
				//If no errors, put data in table
				else {
					//Store and bind results
					$query->store_result();
					$query->bind_result($id, $productName);
					
					//If no results found (not counting result currently displayed on this page), display "none"
					if($query->num_rows <= 1){
						echo "No prevous orders.";
					}
					//If results found, display them in a list
					else{
						echo "<ol>";
						
						//Display each item
						while($query->fetch()){
							if($id != $_GET["id"]){
								echo "<li><a href=order-details.php?id=".$id." target='_blank'>".$productName."</a></li>";
							}
						}
						echo "</ol>";
					}
				}
			}
			//If orders history statement fails, display error
			else {
				echo $errorMessage;
			}	
		}
		//If order details statement fails, display error
		else {
			echo $errorMessage;
		}	
		//Close connection when finished
		mysqli_close($conn);
	}
?>
  

</body>