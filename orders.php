<!DOCTYPE html>
<?php
	include "login-check.php";		//Checks if user is logged in
?>
<head>
	<title>Past Orders</title>
	<link rel="stylesheet" href="styles/styles.css" />
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<?php
	//Include Files
	include "concat-address.php";	//Used to concatonate full address
	include "header.php";			//Header
?>

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
		
		//Current pagenation page
		$page = isset($_GET['page']) ? $_GET['page'] : 1;
		
		// number of rows per page
		$rowsPerPage = 10;
		
		// Number of pagenation links to show
		$range = 2;
		
		// calculate for the query LIMIT clause
		$fromRowNum = ($rowsPerPage * $page) - $rowsPerPage;
		
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
			$statement = "SELECT id, order_id, name, email, mobile, address_line_one, address_line_two, suburb, state, postcode, country, status  FROM ".$dbTableName." LIMIT ".$fromRowNum.", ".$rowsPerPage.";";
				
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
						$fullAddress = concatenateAddress($address_line_one, $address_line_two, $suburb, $state, $postcode, $country, false);
						
						/*Populate row of table*/
						echo "<tr>
								<td>".$order_id."</td>
								<td></td>
								<td>".$name."</td>
								<td>".$mobile."</td>
								<td>".$email."</td>
								<td>".$fullAddress."</td>
								<td>".$status."</td>
								<td><a href='order-details.php?id=".$id."' class='button' target='_blank'>&rarr;</a></td>
							</tr>";
							/*TODO: Delete This
							<button onClick='parent.location=\"order-details.php?id=".$id."\"'>&rarr;</button>*/
							
					

					}
					//Close Table
					echo"</table>";
					//PAGENATION
					echo"<div class='tablePages'>";
					
					//SHOW FIRT AND PREVIOUS BUTTONS
					if($page>1){
						//first button
						echo "<a href='" . $_SERVER['PHP_SELF'] . "' title='Go to the first page.' class='customBtn'>";
							echo "<span style='margin:0 .5em;'> << </span>";
						echo "</a>";
						
						//previous button
						$prevPage = $page - 1;
						echo "<a href='" . $_SERVER['PHP_SELF'] 
								. "?page={$prevPage}' title='Previous page is {$prevPage}.' class='customBtn'>";
							echo "<span style='margin:0 .5em;'> < </span>";
						echo "</a>";
						
					}
					
					//SHOW PAGE NUMBERS
 
					// find page count
					
					$statement = "SELECT COUNT(*) as total_rows FROM orders";
					$query = $conn->prepare( $statement );
					$query->execute();
					
					$query->store_result();
					$query->bind_result($rowCount);
					while($query->fetch()){
						$total_rows = $rowCount;
					}
					$totalPages = ceil($total_rows / $rowsPerPage);
					
					// display links to 'range of pages' around 'current page'
					$pageLow = $page - $range;
					$pageHigh = ($page + $range)  + 1;
					
					for ($x=$pageLow; $x<$pageHigh; $x++) {
						
						// be sure '$x is greater than 0' AND 'less than or equal to the $totalPages'
						if (($x > 0) && ($x <= $totalPages)) {
						
							// current page
							if ($x == $page) {
								echo "<span class='customBtn'><strong>$x<strong></span>";
							} 
							
							// not current page
							else {
								echo " <a href='{$_SERVER['PHP_SELF']}?page=$x' class='customBtn'>$x</a> ";
							}
						}
					}
					
					//SHOW NEXT AND LAST PAGES
					if($page<$totalPages){
						// ********** show the next page
						$nextPage = $page + 1;
						echo "<a href='" . $_SERVER['PHP_SELF'] . "?page={$nextPage}' title='Next page is {$nextPage}.' class='customBtn'>";
							echo "<span style='margin:0 .5em;'> > </span>";
						echo "</a>";
						
						// ********** show the last page
						echo "<a href='" . $_SERVER['PHP_SELF'] . "?page={$totalPages}' title='Last page is {$totalPages}.' class='customBtn'>";
							echo "<span style='margin:0 .5em;'> >> </span>";
						echo "</a>";
					}
					echo "</div>";
				}
			}
			//Close connection when finished
			mysqli_close($conn);
		}
	?>
</body>