<%-- 
    Document   : Availability
    Created on : Mar. 7, 2024, 10:12:52 a.m.
    Author     : hamzamalik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Luxury Car Availability</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $(".datepicker").datepicker({
                dateFormat: "yy-mm-dd"
            });
        });
    </script>
    <style>
        /* ... existing styles ... */

        .availability-table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        .availability-table th,
        .availability-table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .availability-table th {
            background-color: #333;
            color: #fff;
        }

        .availability-table td {
            background-color: #fff;
        }

        .availability-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .availability-table tr:hover {
            background-color: #ddd;
        }

        /* ... additional styles if needed ... */
    </style>
</head>
<body>
    <div class="container">
        <h2>Luxury Car Availability</h2>
        <table class="availability-table">
            <thead>
                <tr>
                    <th>Car Model</th>
                    <th>Availability</th>
                    <th>Price Per Day</th>
                    <th>Book Now</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Aston Martin Vantage</td>
                    <td>Available</td>
                    <td>$850</td>
                    <td><button>Book</button></td>
                </tr>
                <tr>
                    <td>Bentley Continental GT</td>
                    <td>Available</td>
                    <td>$950</td>
                    <td><button>Book</button></td>
                </tr>
                <tr>
                    <td>Ferrari F8 Tributo</td>
                    <td>Available</td>
                    <td>$1200</td>
                    <td><button>Book</button></td>
                </tr>
                <!-- More rows as needed -->
            </tbody>
        </table>
    </div>
</body>
</html>
