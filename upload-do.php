<?php
	//Check user is logged in
	include "login-check.php";
	include "db-login.php";
	$dbTableName = "orders";
		
	
	echo $_POST['order_id'];
	
	
	
	
	/*
	  `id` int(9) NOT NULL,
	`order_id` int(9) NOT NULL,
	`product_code` varchar(191) NOT NULL,
	`name` varchar(191) NOT NULL,
	`email` varchar(191) NOT NULL,
	`mobile` varchar(191) DEFAULT NULL,
	`address_line_one` varchar(191) NOT NULL,
	`address_line_two` varchar(191) DEFAULT NULL,
	`suburb` varchar(191) NOT NULL,
	`state` varchar(191) NOT NULL,
	`postcode` varchar(191) NOT NULL,
	`country` varchar(191) NOT NULL,
	`status` varchar(191) NOT NULL DEFAULT 'pending'
	*/
	
	/*Validate:
	Name (Required)
	Email address (Required | Valid email)
	Address line 1 (Required)
	Postcode (Required | Min 4 digits)
	State (Required | Valid values: [NSW, ACT, VIC, QLD, SA, NT, TA])
	Country
	Additionally, validate the product code to ensure it exists in the system.
	*/
?>
