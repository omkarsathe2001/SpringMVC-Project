<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Operations</title>
<style>
    /* General Body Styling */
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7; /* Light grey background for a modern look */
        margin: 0;
        padding: 0;
    }

    /* Header Styling */
    h1 {
        color: white;
        background-color: #0066cc;
        padding: 20px;
        text-align: center;
        margin: 0;
        font-size: 32px;
    }

    /* Container Styling */
    .form-container {
        width: 50%;
        margin: 50px auto;
        padding: 30px;
        background-color: #ffffff;
        box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        text-align: center;
        display: flex;
        flex-direction: column;
        gap: 15px; /* Space between buttons */
    }

    /* Button Styling */
    button {
        background-color: #28a745;
        color: white;
        padding: 12px 25px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 18px;
        transition: background-color 0.3s ease;
        width: 100%; /* Buttons span the full width of the container */
        max-width: 300px; /* Limit button width */
        margin: 0 auto; /* Center the buttons */
    }

    /* Hover Effect */
    button:hover {
        background-color: #218838;
    }

    /* Responsive Design for Small Screens */
    @media (max-width: 768px) {
        .form-container {
            width: 80%; /* Increase container width on smaller screens */
        }
    }

    /* Section Styling */
    .section-title {
        font-size: 24px;
        margin-bottom: 20px;
        color: #333333;
    }
</style>
</head>
<body>

<h1>Vehicle Operations</h1>

<div class="form-container">
    <!-- Section Title -->
    <div class="section-title">Manage Your Vehicles</div>

    <!-- Add New Vehicle Button -->
    <form action="gotoadd" method="get">
        <button type="submit">Add New Vehicle</button>
    </form>

    <!-- Update Vehicle Button -->
    <form action="changeform" method="get">
        <button type="submit">Update Vehicle</button>
    </form>

    <!-- Delete Vehicle Button -->
    <form action="deleteform" method="get">
        <button type="submit">Delete Vehicle</button>
    </form>

    <!-- Show All Vehicles Button -->
    <form action="show" method="get">
        <button type="submit">Show All Vehicles</button>
    </form>
</div>

</body>
</html>
