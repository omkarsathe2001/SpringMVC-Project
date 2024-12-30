<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert New Vehicle</title>

<!-- External CSS for better styling -->
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f8ff;
	margin: 0;
	padding: 0;
}

h1 {
	color: white;
	background-color: #0066cc;
	padding: 20px;
	text-align: center;
	margin: 0;
}

.form-container {
	width: 40%;
	margin: 50px auto;
	padding: 20px;
	background-color: #ffffff;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
}

label {
	font-size: 16px;
	margin-bottom: 10px;
	display: inline-block;
}

input[type="text"], input[type="number"] {
	width: 100%;
	padding: 8px;
	margin: 8px 0;
	border-radius: 5px;
	border: 1px solid #ccc;
}

button {
	background-color: #28a745;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

button:hover {
	background-color: #218838;
}
</style>

<!-- JavaScript for alert -->
<script>
	function showAlert() {
		alert("Data added successfully!");
	}
</script>
</head>
<body>

	<h1>Vehicle Form</h1>

	<center>
		<div class="form-container">

			<!-- Add the onsubmit attribute to trigger the JavaScript alert function -->
			<form action="add" method="post" onsubmit="showAlert()">

				<label for="vname">Vehicle Name:</label> <input type="text"
					name="vname" id="vname" placeholder="Enter Vehicle name" required>
				<br> <label for="price">Vehicle Price:</label> <input
					type="number" name="price" id="price"
					placeholder="Enter Vehicle Price" required> <br> <label
					for="milage">Vehicle Milage:</label> <input type="text"
					name="milage" id="milage" placeholder="Enter Vehicle Milage"
					required> <br>

				<button type="submit">Add</button>

			</form>
		</div>
	</center>

</body>
</html>
