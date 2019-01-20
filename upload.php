<!DOCTYPE html>
<?php
	include "login-check.php";		//Checks if user is logged in
?>
<head>
	<title>Upload Orders</title>
	<link rel="stylesheet" href="styles/styles.css" />
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    
	<!--Script to handle sending data to server and displaying results-->
	<script src="scripts/upload.js" type="text/javascript"></script>
</head>
<body>
	<?php
		//Include Header
		include "header.php";
	?>
	
	<h1>Upload Orders</h1>
    <fieldset>
        <legend>Choose your .csv file.</legend>
        <input type="file" name="File Upload" id="txtFileUpload" accept=".csv" />
    </fieldset>
	
	<div id="fail-lines" class="hidden">
		<p class="error-message">The following lines failed to upload (syntax errors are red, database errors are blue).</p>
		<table id="fail-table">
			<tr>
				<th>order_id</th>
				<th>product_code</th>
				<th>name</th>
				<th>email</th>
				<th>mobile</th>
				<th>address_line_one</th>
				<th>address_line_two</th>
				<th>suburb</th>
				<th>state</th>
				<th>postcode</th>
				<th>country</th>
			</tr>
		</table>
	</div>
	<div id="success-lines" class="hidden">
		<p>The following lines were uploaded successfully.</p>
		<table id="success-table">
			<tr>
				<th>order_id</th>
				<th>product_code</th>
				<th>name</th>
				<th>email</th>
				<th>mobile</th>
				<th>address_line_one</th>
				<th>address_line_two</th>
				<th>suburb</th>
				<th>state</th>
				<th>postcode</th>
				<th>country</th>
			</tr>
		</table>
	</div>
    </body>
</html>