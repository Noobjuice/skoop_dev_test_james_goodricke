<!DOCTYPE html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript"> 

		//Method that processes file input. Called in importFile method.
		function process(input){
			//Store each line of input in an array.
			var allLines = input.split(/\r\n|\n/);
			
			//Upload each line to the database
			for (var i=1; i<allLines.length; i++) {
				//Store each cell of hte current line in an array.
				line=allLines[i].split(',');
				
				//Validate?
				//Upload
				$.ajax({
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
							status: line[11]
						},
					success: function(msg){
						//$('.answer').html(msg);
						alert(msg);
					}
				});
				//Store
								
				//Display
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
    <fieldset>
        <legend>Choose your .csv file.</legend>
        <input type="file" name="File Upload" id="txtFileUpload" accept=".csv" />
    </fieldset>
	
	<div id="raw_output"></div>
    </body>
</html>