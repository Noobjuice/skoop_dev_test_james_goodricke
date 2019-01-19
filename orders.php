<HTML XMLns="http://www.w3.org/1999/xHTML">
<?php
	//Check user is logged in
	include "login-check.php";
?>
<head>
	<title>Past Orders</title>
	<link rel="stylesheet" href="styles/styles.css">
</head>
<body>
<h1>Past Orders</h1>
	<?php
		//Database Credentials
		$serverName  = "localhost";
		$dbName = "skoop";
		$dbUsername = "root";
		$dbPassword = "";
		$dbTableName = "orders";
		
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
			//Query to be sent to Server
			/*`id`, `order_id`, `product_code`, `name`, `email`, `mobile`, `address_line_one`, `address_line_two`, `suburb`, `state`, `postcode`, `country`, `status`*/
			$statement = "SELECT id, order_id, name, email, mobile, address_line_one, address_line_two, suburb, state, postcode, country, status  FROM ".$dbTableName;
				
			//Prepare and execute Query
			if($query = $conn->prepare($statement)){
				//TODO: Delete This
				//$query->bind_param('issssssssss');
				$query->execute();
				
				//If Errors exist, report to user
				if($query->errno != 0) {
					echo $errorMessage;
				}
				//If no errors, put data in table
				else {
					$query->store_result();
					$query->bind_result($id, $order_id, $name, $email, $mobile, $address_line_one, $address_line_two, $suburb, $state, $postcode, $country, $status);
					
					
								
					
					echo"<table>
							<tr>
								<th>Order Number</th>
								<th>Order Date</th>
								<th>Name</th>
								<th>Phone Number</th>
								<th>Email</th>
								<th>Address</th>
								<th>Shipping Status</th>
								<th>Order Details</th>
							</tr>";
					
					while($query->fetch()){
						
						//Concatonate Address
						$fullAddress = "";
						//Address line 1
						if($address_line_one != ""){
							$fullAddress .= $address_line_one.", ";
							
							//Add comma if there is still more address to come
							if($address_line_two != "" || $suburb != "" || $state != "" || $postcode != "" || $country != "") {
								$fullAddress .= ", ";
							}
						}	
						//Address line 2					
						if($address_line_two != ""){
							$fullAddress .= $address_line_two.", ";
							
							//Add comma if there is still more address to come
							if($suburb != "" || $state != "" || $postcode != "" || $country != "") {
								$fullAddress .= ", ";
							}
						}
						//Suburb						
						if($suburb != ""){
							$fullAddress .= $suburb.", ";
							
							//Add comma if there is still more address to come
							if($state != "" || $postcode != "" || $country != "") {
								$fullAddress .= ", ";
							}
						}						
						//State	
						if($state != ""){
							$fullAddress .= $state.", ";
							
							//Add comma if there is still more address to come
							if($postcode != "" || $country != "") {
								$fullAddress .= ", ";
							}
						}						
						//Postcode	
						if($postcode != ""){
							$fullAddress .= $postcode.", ";
							
							//Add comma if there is still more address to come
							if($country != "") {
								$fullAddress .= ", ";
							}
						}						
						//Country
						if($country != ""){
							$fullAddress .= $country;
						}
						
						/*Populate row of table*/
						echo "<tr>
								<th>".$order_id."</th>
								<th></th>
								<th>".$name."</th>
								<th>".$mobile."</th>
								<th>".$email."</th>
								<th>".$fullAddress."</th>
								<th>".$status."</th>
								<th><a href='order-details.php?id=".$id."' class='button'>&rarr;</a></th>
							</tr>";
					}
					//Close Table
					echo"</table>";
				}
			}
		}
	?>
	</table>
</body>