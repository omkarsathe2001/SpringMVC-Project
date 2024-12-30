<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import=" com.spring.Model.Vehicle"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Vehicles</title>
<style>
    table {
        width: 80%;
        margin: auto;
        border-collapse: collapse;
    }

    th, td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: center;
    }

    th {
        background-color: #f4f4f4;
    }

    /* Styling the button to match the table design */
    .button-container {
        text-align: center;
        margin-top: 20px;
    }

    .btn {
        background-color: #0066cc;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    .btn:hover {
        background-color: #005bb5;
    }
</style>
</head>
<body>

    <h1 style="text-align: center;">Vehicle List</h1>
    
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Mileage</th>
            </tr>
        </thead>
        <tbody>
            <%
            Vehicle vehicle = (Vehicle) request.getAttribute("vehicle");
            %>
            <tr>
                <td><%=vehicle.getVid()%></td>
                <td><%=vehicle.getVname()%></td>
                <td><%=vehicle.getPrice()%></td>
                <td><%=vehicle.getMilage()%></td>
            </tr>

        </tbody>
    </table>

    <!-- Button to redirect to the operations page -->
<!--     <div class="button-container">
        <form action="goto" method="get">
            <button type="submit" class="btn">Back to Operations</button>
        </form>
    </div> -->

</body>
</html>
