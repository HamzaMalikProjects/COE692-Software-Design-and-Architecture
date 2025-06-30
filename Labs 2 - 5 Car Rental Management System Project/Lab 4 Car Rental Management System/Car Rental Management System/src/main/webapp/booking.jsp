<%-- 
    Document   : booking
    Created on : Feb. 6, 2024, 10:53:58 p.m.
    Author     : hamzamalik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book a Car</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body style="background-image: url('booking_bg.jpg');">
    <div class="container">
        <h2>Book a Car</h2>
        <form action="BookCarServlet" method="post">
            <label for="carModel">Car Model:</label>
            <input type="text" id="carModel" name="carModel" required><br>

            <label for="rentalDates">Rental Dates:</label>
            <input type="text" id="rentalDates" name="rentalDates" required><br>

            <input type="submit" value="Book Now">
        </form>
    </div>
</body>
</html>

