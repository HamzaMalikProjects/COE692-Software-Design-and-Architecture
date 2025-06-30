<%-- 
    Document   : Extend
    Created on : Mar. 7, 2024, 1:35:53 a.m.
    Author     : hamzamalik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- This is a simple extend.html page for extending the rental period -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Extend Rental</title>
    <!-- Add link to CSS files and any required scripts -->
</head>
<body>
    <h1>Extend Your Rental Period</h1>
    <form action="/extendBooking" method="post">
        <!-- Add fields for extending booking, such as picking a new date -->
        <input type="date" name="newReturnDate" required>
        <input type="submit" value="Extend Rental">
    </form>
</body>
</html>
