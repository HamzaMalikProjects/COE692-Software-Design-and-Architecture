<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input[type="text"],
        .form-group input[type="email"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .cart-summary {
            border-top: 1px solid #ccc;
            margin-top: 20px;
            padding-top: 20px;
        }
        .cart-summary table {
            width: 100%;
            border-collapse: collapse;
        }
        .cart-summary th,
        .cart-summary td {
            padding: 10px;
            border-bottom: 1px solid #ccc;
            text-align: left;
        }
        .total {
            font-weight: bold;
        }
        .checkout-btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .checkout-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Checkout</h1>
        
        <!-- Billing Information Form -->
        <form id="checkout-form" action="payment.jsp" method="post" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="fullname">Full Name</label>
                <input type="text" id="fullname" name="fullname" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required>
            </div>
            <!-- Add more fields for address, payment details, etc. as needed -->
            
            <!-- Cart Summary -->
            <div class="cart-summary">
                <h2>Cart Summary</h2>
                <table>
                    <tr>
                        <th>Item</th>
                        <th>Price</th>
                    </tr>
                    <!-- Retrieve and display selected car details -->
                    <tr>
                        <td><%= request.getParameter("carName") %></td>
                        <td>$<%= request.getParameter("price") %>/day</td>
                    </tr>
                </table>
                <!-- Total Cost -->
                <div class="total">Total: $<%= request.getParameter("price") %></div>
            </div>
            
            <!-- Checkout Button -->
            <!-- This button would ideally process the payment and complete the checkout -->
            <button type="submit" class="checkout-btn">Proceed to Payment</button>
            
        </form>
    </div>

    <script>
        function validateForm() {
            var fullname = document.getElementById('fullname').value.trim();
            var email = document.getElementById('email').value.trim();

            if (fullname === '' || email === '') {
                alert('Please fill in all fields.');
                return false;
            }

            // Add more validation as needed

            return true;
        }
    </script>
</body>
</html>
