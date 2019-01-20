<?php
	//Check user is logged in
	include "login-check.php";
	include "db-login.php";
	$dbTableName = "orders";
	
	$result = "";
	
	/*------------------------
	SANITISE AND VALIDATE DATA
	------------------------*/
	//Trim Whitespace from input
	
	$order_id = trim($_POST['order_id']);
	$product_code = trim($_POST['product_code']);
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$mobile = trim($_POST['mobile']);
	$address_line_one = trim($_POST['address_line_one']);
	$address_line_two = trim($_POST['address_line_two']);
	$suburb = trim($_POST['suburb']);
	$state = trim($_POST['state']);
	$postcode = trim($_POST['postcode']);
	$country = trim($_POST['country']);
	//$status = trim($_POST['status']);
	
	//Order ID
	try {
		$order_id = filter_var($order_id, FILTER_SANITIZE_STRING);
	}
	catch(Exception $e) {
		$result = "0,";
	}	
	
	//product code (must exist in the system)
	//TODO: Finish This
	try {
		$product_code = filter_var($product_code, FILTER_SANITIZE_STRING);
	}
	catch(Exception $e) {
		$result .= "1,";
		echo 'Message: ' .$e->getMessage();
	}	
	
	//Name (Required)
	//If name countains at least one alpha charecter, attempt to parse.
	if((preg_match('/[a-zA-Z]+/', $name, $match))) {		
		try {
			$name = filter_var($name, FILTER_SANITIZE_STRING);
			//If name doesn't contain 1+ alpha charecters, mark as error
		}
		//If input fails to sanitise, mark as error
		catch(Exception $e) {
			$result .= "2,";
		}	
	}
	//If name countains no alpha charecters, mark as error.
	else{
		$result .= "2,";
	}

	
	//Email address (Required | Valid email) 
	if(filter_var($email, FILTER_VALIDATE_EMAIL)) {
		try {
			$email = filter_var($email, FILTER_SANITIZE_STRING);
			//If name doesn't contain 1+ alpha charecters, mark as error		
		}
		//If input fails to sanitise, mark as error
		catch(Exception $e) {
			$result .= "3,";
		}	
	}
	else{
		$result .= "3,";
	}
	
	
	//Mobile
	try {
		$mobile = filter_var($mobile, FILTER_SANITIZE_STRING);
	}
	//If input fails to sanitise, mark as error
	catch(Exception $e) {
		$result .= "4,";
	}
	
	//Address line 1 (Required
	//If address isn't blank, attempt to parse
	if($address_line_one != ""){
		try {
			$address_line_one = filter_var($address_line_one, FILTER_SANITIZE_STRING);
	
		}
		//If input fails to sanitise, mark as error
		catch(Exception $e) {
			$result .= "5,";
		}
	}
	//If address is blank mark as error.
	else
	{
		$result .= "5,";
	}


	//Address line 2
	try {
		$address_line_two = filter_var($address_line_two, FILTER_SANITIZE_STRING);
	}
	//If input fails to sanitise, mark as error
	catch(Exception $e) {
		$result .= "6,";
	}
	
	//Suburb
	try {
		$suburb = filter_var($suburb, FILTER_SANITIZE_STRING);
	}
	//If input fails to sanitise, mark as error
	catch(Exception $e) {
		$result .= "7,";
	}
	
	//State (Required | Valid values: [NSW, ACT, VIC, QLD, SA, NT, TA])
	//Remove whitespace from beginning and end of string.
	
	if(	$state != "NSW" ||
		$state != "ACT" || 
		$state != "VIC" || 
		$state != "QLD" || 
		$state != "SA" || 
		$state != "NT" || 
		$state != "TA" ){
		try {
			$state = filter_var($state, FILTER_SANITIZE_STRING);
		}
		//If input fails to sanitise, mark as error
		catch(Exception $e) {
			$result .= "8,";
		}
	}
	else{
		$result .= "8,";
	}

	
	//Postcode (Required | Min 4 digits)
	if((preg_match('/[0-9]{4,}/', $postcode, $match))){
		try {
			$postcode = filter_var($postcode, FILTER_SANITIZE_STRING);
		}
		//If input fails to sanitise, mark as error
		catch(Exception $e) {
			$result .= "9,";
		}
	}
	else{
		$result .= "9,";
	}
	
	//Country (required)
	if($country != ""){
		try {
			$country = filter_var($country, FILTER_SANITIZE_STRING);
		}
		//If input fails to sanitise, mark as error
		catch(Exception $e) {
			$result .= "10";
		}
	}
	else{
		$result .= "10";
	}

	
	//Status
	/*try {
		$status = filter_var($status, FILTER_SANITIZE_STRING);
	}
	//If input fails to sanitise, mark as error
	catch(Exception $e) {
		$result .= "11,";
	}*/

	/*-----------------
	SEND DATA TO SERVER
	-----------------*/	
	if($result == ""){
		$result = "OK";
		//TODO: finish this
	}
	
	/*-----------
	RETURN RESULT
	-----------*/
	echo $result;
?>