<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Form</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            width: 50%;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }

        .mainheading {
            text-align: center;
            margin-top: 0;
            margin-bottom: 30px;
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"],
        input[type="password"],
        input[type="date"],
        select,
        textarea {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 16px;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            padding: 14px 0;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            margin-top: 20px;
            font-size: 18px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        h2 {
            border-bottom: 2px solid #333;
            padding-bottom: 10px;
            margin-bottom: 20px;
            color: #333;
        }

        fieldset {
            border: 1px solid #ccc;
            border-radius: 6px;
            padding: 20px;
            margin-bottom: 20px;
        }

        legend {
            font-weight: bold;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 16px;
            color: #333;
        }

        p {
            margin: 10px 0;
            font-size: 16px;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="container">
        <form action="" method="get">
            <h1 class="mainheading">PAYMENT FORM</h1>
            
            <h2>User Information</h2>
            <div>
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" required placeholder="Enter your full name">
            </div>
            <fieldset>
                <legend>Gender</legend>
                <label for="male"><input type="radio" name="gender" id="male" value="M" required> Male</label>
                <label for="female"><input type="radio" name="gender" id="female" value="F" required> Female</label>
                <label for="other"><input type="radio" name="gender" id="other" value="O" required> Other</label>
            </fieldset>
            <div>
                <label for="address">Address:</label>
                <textarea id="address" name="address" rows="4" placeholder="Enter your address" required></textarea>
            </div>
            <div>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required placeholder="Enter your email">
            </div>
            <div>
                <label for="dl_number">Driver's License Number:</label>
                <input type="text" id="dl_number" name="dl_number" required placeholder="Enter your driver's license number">
            </div>
            
            <h2>Payment Information</h2>
            <div>
                <label for="card_type">Card Type:</label>
                <select id="card_type" name="card_type" required>
                    <option value="">---------Select Card Type---------</option>
                    <option value="Visa">Visa</option>
                    <option value="MasterCard">MasterCard</option>
                </select>
            </div>
            <div>
                <label for="card_number">Card Number:</label>
                <input type="text" id="card_number" name="card_number" required placeholder="Enter your card number">
            </div>
            <div>
                <label for="exp_date">Expiration Date:</label>
                <input type="date" id="exp_date" name="exp_date" required>
            </div>
            <div>
                <label for="cvv">CVV:</label>
                <input type="password" id="cvv" name="cvv" required placeholder="Enter CVV">
            </div>
            
            <input type="submit" value="Pay Now">
        </form>
    </div>
</body>
</html>
