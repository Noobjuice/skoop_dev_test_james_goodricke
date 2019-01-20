<!DOCTYPE html>
<?php
	include "login-check.php";		//Checks if user is logged in
?>
<head>
	<title>Upload Orders</title>
	<link rel="stylesheet" href="styles/styles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript"> 
		//Method that display lines that were successfully uploaded. Called in process method.
		function displaySuccess(line){
			//Unhide the table
			$("#success-lines").removeClass("hidden");
			
			//Find table that will have rows added to it
			var tableBody = $("#success-table");
			
			//Create a new row
			var tr = document.createElement('tr');
			
			//Add cells to row
			for (var i = 0; i < line.length; i++) {
				var td = document.createElement('td');
				td.appendChild(document.createTextNode(line[i]));
				tr.appendChild(td);
			}
			//Add row to table
			tableBody.append(tr);	
		}
		
		//Method to display lines that were not successfully uploaded. Called in process method.
		function displayfail(line, errors){
			//Unhide the table
			$("#fail-lines").removeClass("hidden");
			
			//Find table that will have rows added to it
			var tableBody = $("#fail-table");
			
			//Create a new row
			var tr = document.createElement('tr');
			if(errors[0] == -1){
				tr.classList.add( "db-error-message" );
			}
			
			//Add cells to row
			for (var i = 0; i < line.length; i++) {
				//Create a cell
				var td = document.createElement('td');
					
					//Highlight the cells with the error
					for(var j = 0; j < errors.length; j++){
						if(errors[j] == i && errors[j] != ""){
							td.classList.add( "error-message" );
							//If cell is empty, add "REQUIRED" text to it
							if(line[i] == ""){
								line[i] = "REQUIRED";
							}
							break;
						}
					}
				
				//Add text to cell and append to row
				td.appendChild(document.createTextNode(line[i]));
				tr.appendChild(td);
			}
			//Append row to table
			tableBody.append(tr);	
		}	

		//Method that processes file input. Called in importFile method.
		function process(input){

			//Store each line of input in an array.
			var allLines = input.split(/\r\n|\n/);
			
			//Upload each line to the database
			for (var i=0; i<=allLines.length; i++) {
				//Store each cell of hte current line in an array.
				line=allLines[i].split(',');
				
				//Validate?
				//Upload
				$.ajax({
					async: false,
					url: 'upload-do.php',
					type: 'POST',
					data: { 
							order_id: line[0],
							product_code: line[1],
							name: line[2],
							email: line[3],
							mobile: line[4],
							address_line_one: line[5],
							address_line_two: line[6],
							suburb: line[7],
							state: line[8],
							postcode: line[9],
							country: line[10],
							//status: line[11]
						},
					success: function(msg){
						//If no errors, store successful line
						if(msg == "OK"){
							//Display results
							displaySuccess(line);
						}
						//If errors, error line and error reason.
						else{
							msg = msg.split(",");
							displayfail(line, msg);
						}
					}
				});	
			}
		}
    
		
		// Method that imports the file. Called by event listener on file uploader.
		function importFile(evt) {
			//If browser doesn't support HTML5, alert the user.
			if (!(window.File && window.FileReader && window.FileList && window.Blob)) {
				alert('The File APIs are not fully supported in this browser!');
			}
			//If browser does support HTML5, import the file.
			else {
				//Create Reader and set it to read selected file
				var reader = new FileReader();
				reader.readAsText(evt.target.files[0]);
				
				//Process file contents
				reader.onload = function(event) {
					process(event.target.result);
				};
				//If reader is unable to read file, alert the user
				reader.onerror = function() {
					alert('Unable to read ' + file.fileName);
				};
			}
		}
		// On page load, add event listener to the file uploader.
		$(document).ready(function() {
			document.getElementById('txtFileUpload').addEventListener('change', importFile, false);
		});

</script>
    </head>
    <body>
	<?php
		//Include Files
		include "header.php";			//Header
	?>
	
	<h1>Upload Orders</h1>
    <fieldset>
        <legend>Choose your .csv file.</legend>
        <input type="file" name="File Upload" id="txtFileUpload" accept=".csv" />
    </fieldset>
	
	<div id="fail-lines" class="hidden">
		<p>The following lines failed to upload (syntax errors are red, database errors are blue).</p>
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