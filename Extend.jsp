<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Extend Car Rental</title>
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
        body {
            font-family: 'Arial', sans-serif;
            background: url('https://source.unsplash.com/1920x1080/?luxury-car') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            color: #000;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            max-width: 800px;
            padding: 60px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 20px;
            box-shadow: 0 0 0 px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1, h2 {
            color: #000;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #000;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            margin-bottom: 20px;
        }

        button[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 20px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Confirmation Modal */
        #confirmationModal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(255, 255, 255, 0.9); /* Lighter background */
        }

        .modal-content {
            background-color: #f5f5f5; /* Smoke background */
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            border-radius: 10px;
            text-align: center;
        }

        .close-button {
            background-color: #f44336;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 10px;
        }

        .close-button:hover {
            background-color: #d32f2f;
        }

        .confirm-button {
            background-color: #4caf50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .confirm-button:hover {
            background-color: #45a049;
        }

        /* Center the text within modal */
        .modal-content p {
            margin: 0;
            font-size: 1.5em; /* Adjust size of text */
        }

    </style>
</head>
<body>
    <div class="container">
        <h1>Extend Your Rental Period</h1>
        <form class="extend-form" id="extendForm">
            <label for="bookingId">Booking ID:</label>
            <input type="text" id="bookingId" name="bookingId" required>

            <label for="newReturnDate">New Return Date:</label>
            <input type="text" class="datepicker" id="newReturnDate" name="newReturnDate" required>

            <button type="submit">Extend Rental</button>
        </form>
        <p id="error-message" style="color: red; display: none;">Invalid booking ID. Please enter a valid ID.</p>
    </div>

    <!-- Confirmation Modal -->
    <div id="confirmationModal">
        <div class="modal-content">
            <p>Are you sure you want to extend this rental?</p>
            <div class="cancel-button-container">
                <button id="closeModal" class="close-button">No, Close</button>
                <button id="confirmExtension" class="confirm-button">Yes, Extend</button>
            </div>
        </div>
    </div>

    <script>
        // Script to handle form submission and show confirmation modal
        document.getElementById('extendForm').addEventListener('submit', function(event) {
            event.preventDefault();
            var bookingId = document.getElementById('bookingId').value;
            var newReturnDate = document.getElementById('newReturnDate').value;

            // Form validation logic
            if (!bookingId || !newReturnDate) {
                document.getElementById('error-message').style.display = 'block';
                return false;
            }

            // Example of checking booking ID validity (for demonstration)
            if (bookingId === '6900') {
                // Show the confirmation modal if booking ID is valid
                document.getElementById('confirmationModal').style.display = 'block';
            } else {
                // Display error message for invalid booking ID
                document.getElementById('error-message').style.display = 'block';
            }
        });

        // Script to close the modal
        document.getElementById('closeModal').addEventListener('click', function() {
            document.getElementById('confirmationModal').style.display = 'none';
        });

        // Script to confirm extension
        document.getElementById('confirmExtension').addEventListener('click', function() {
            // TODO: Implement extension logic, e.g., AJAX request to server
            alert('Rental extended successfully.'); // Placeholder functionality
            document.getElementById('confirmationModal').style.display = 'none';
            // Reset the form
            document.getElementById('extendForm').reset();
            // Redirect back to main menu (for illustration)
            window.location.href = "bookingpage.html";
        });
    </script>
</body>
</html>
