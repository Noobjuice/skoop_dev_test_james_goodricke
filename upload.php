<!DOCTYPE html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">  
    $(document).ready(function() {
		// Add event listener to the file uploader
		document.getElementById('txtFileUpload').addEventListener('change', upload, false);
	
		// Method that imports the file.
		function upload(evt) {
			//If browser doesn't support HTML5, send alert to the user.
			if (!(window.File && window.FileReader && window.FileList && window.Blob)) {
				alert('The File APIs are not fully supported in this browser!');
			}
			//If browser does support HTML5, import the file.
			else {
				//TODO: Delete This
				//var data = null;
				var file = evt.target.files[0];
				var reader = new FileReader();
				reader.readAsText(file);
				reader.onload = function(event) {
					var fileContents = event.target.result;
					alert(fileContents);
					
					/*TODO: Delete This
					alert(event.target.result);
					var csvData = event.target.result;
					data = $.csv.toArrays(csvData);
					if (data && data.length > 0) {
					alert('Imported -' + data.length + '- rows successfully!');
					} else {
						alert('No data to import!');
					}*/
					
				};
				reader.onerror = function() {
					alert('Unable to read ' + file.fileName);
				};
			}
		}
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