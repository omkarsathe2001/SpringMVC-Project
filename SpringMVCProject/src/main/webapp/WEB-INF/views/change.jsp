
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Vehicle</title>

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
        width: 50%;
        margin: 20px auto;
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

    input[type="text"],
    input[type="number"] {
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
        margin: 5px;
    }

    button.update {
        background-color: #007bff;
    }

    button.delete {
        background-color: #dc3545;
    }

    button.show {
        background-color: #ffc107;
    }

    button:hover {
        opacity: 0.9;
    }
</style>

<script>
    function showAlert(message) {
        alert(message);
    }
</script>
</head>
<body>

<h1>Update Vehicle</h1>


<div class="form-container">

    <form action="update"  onsubmit="showAlert('Data updated successfully!')">
        <label for="vid">Vehicle ID:</label>
        <input type="number" name="vid" id="vid" placeholder="Enter Vehicle ID" required> <br>

        <label for="vname">Vehicle Name:</label>
        <input type="text" name="vname" id="vname" placeholder="Enter Vehicle Name" required> <br>

        <label for="price">Vehicle Price:</label>
        <input type="number" name="price" id="price" placeholder="Enter Vehicle Price" required> <br>

        <label for="milage">Vehicle Mileage:</label>
        <input type="text" name="milage" id="milage" placeholder="Enter Vehicle Mileage" required> <br>

        <button type="submit" class="update">Update</button>
    </form>
</div>

</body>
</html>
