<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Availability</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('https://source.unsplash.com/1920x1080/?car,rental');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            color: #fff;
        }

        .container {
            max-width: 800px;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
            margin: 20px auto;
        }

        h2 {
            color: #fff;
            margin-bottom: 20px;
        }

        input[type="text"], select {
            width: calc(50% - 10px);
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        .car-list {
            list-style-type: none;
            padding: 0;
            margin-top: 20px;
        }

        .car-item {
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
            background-color: rgba(255, 255, 255, 0.9);
            cursor: pointer;
        }

        .car-item h3 {
            margin-top: 0;
            color: #000;
        }

        .car-item p {
            margin: 5px 0;
            color: #333;
        }

        /* Modal styles */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1000; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0, 0, 0); /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            border-radius: 8px;
            position: relative;
        }

        /* Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        /* Button */
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #45a049; /* Darker green */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Car Availability</h2>
        <div style="display: flex; align-items: center; justify-content: space-between;">
            <div>
                <label for="carType">Select Car Type:</label>
                <select id="carType">
                    <option value="all">All Cars</option>
                    <option value="SUV">SUV</option>
                    <option value="Compact">Compact</option>
                    <option value="Sedan">Sedan</option>
                    <option value="Luxury Vehicle">Luxury Vehicle</option>
                    <option value="Trucks">Trucks</option>
                </select>
            </div>
            <div>
                <label for="date">Select Date:</label>
                <input type="text" id="date" class="datepicker" value="2024-04-07">
            </div>
        </div>
        <ul class="car-list" id="carList">
            <!-- Car items will be dynamically added here -->
        </ul>
    </div>

    <!-- Modal -->
    <div id="myModal" class="modal">
        <!-- Modal Content/Box -->
        <div class="modal-content">
            <span class="close">&times;</span>
            <button id="bookingButton" class="button">Book Now</button>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $(".datepicker").datepicker({
                dateFormat: "yy-mm-dd"
            });

            // Function to fetch and display available cars based on selected type and date
            function fetchAvailableCars(carType, date) {
                var availableCars = [
                    { model: "Toyota Corolla", type: "Compact"},
                    { model: "Honda Civic", type: "Compact"},
                    { model: "BMW 3 Series", type: "Luxury Vehicle"},
                    { model: "Subaru Outback", type: "SUV"},
                    { model: "Jeep Wrangler", type: "SUV"},
                    { model: "Toyota RAV4", type: "SUV"},
                    { model: "Ferrari SF90 Stradale", type: "Luxury Vehicle"},
                    { model: "Ford Explorer", type: "SUV"},
                    { model: "Chevrolet Tahoe", type: "SUV"},
                    { model: "Nissan Rogue", type: "SUV"},
                    { model: "Honda CR-V", type: "SUV"},
                    { model: "Mercedes-Benz GLE-Class", type: "Luxury Vehicle"},
                    { model: "Lexus RX", type: "Luxury Vehicle"},
                    { model: "Toyota Camry", type: "Sedan"},
                    { model: "Honda Accord", type: "Sedan"},
                    { model: "BMW 5 Series", type: "Luxury Vehicle"},
                    { model: "Audi A6", type: "Luxury Vehicle"},
                    { model: "Mercedes-Benz E-Class", type: "Luxury Vehicle"},
                    { model: "Lexus IS", type: "Luxury Vehicle"},
                    { model: "Ford Fusion", type: "Sedan"},
                    { model: "Chevrolet Malibu", type: "Sedan"},
                    { model: "Nissan Altima", type: "Sedan"},
                    { model: "Toyota Avalon", type: "Sedan"},
                    { model: "Jeep Grand Cherokee", type: "SUV"},
                    { model: "GMC Acadia", type: "SUV"},
                    { model: "Ford Escape", type: "SUV"},
                    { model: "Chevrolet Equinox", type: "SUV"},
                    { model: "Nissan Pathfinder", type: "SUV"},
                    { model: "Hyundai Santa Fe", type: "SUV"},
                    { model: "Kia Sorento", type: "SUV"},
                    { model: "Honda Pilot", type: "SUV"},
                    { model: "Volvo XC90", type: "Luxury Vehicle"},
                    { model: "Audi Q7", type: "Luxury Vehicle"},
                    { model: "BMW X5", type: "Luxury Vehicle"},
                    { model: "Lexus GX", type: "Luxury Vehicle"},
                    { model: "Tesla Model X", type: "Luxury Vehicle"},
                    { model: "Porsche Cayenne", type: "Luxury Vehicle"},
                    { model: "Volkswagen Atlas", type: "SUV"},
                    { model: "Subaru Forester", type: "SUV"},
                    { model: "Mazda CX-5", type: "SUV"},
                    { model: "Kia Telluride", type: "SUV"},
                    { model: "Buick Enclave", type: "SUV"},
                    { model: "Acura MDX", type: "Luxury Vehicle"},
                    { model: "Lincoln Navigator", type: "Luxury Vehicle"},
                    { model: "Cadillac Escalade", type: "Luxury Vehicle"},
                    { model: "Land Rover Range Rover", type: "Luxury Vehicle"}
                ];

                // Randomly shuffle the available cars array
                availableCars.sort(() => Math.random() - 0.5);

                // Clear existing car list
                $("#carList").empty();

                // Flag to check if any car is available for the given date
                var carsAvailable = false;

                // Filter cars based on selected type and date
                availableCars.forEach(function(car) {
                    if ((carType === "all" || car.type === carType)) {
                        $("#carList").append('<li class="car-item"><h3>' + car.model + '</h3><p>Type: ' + car.type + '</p></li>');
                        carsAvailable = true; // Set flag to true if car is available for the given date
                    }
                });

                // If no cars available for the selected date, display message
                if (!carsAvailable) {
                    $("#carList").append('<li class="car-item"><h3>No Cars Available For This Date</h3></li>');
                }

                // Add click event listener to each car item
                $(".car-item").click(function() {
                    var modal = document.getElementById("myModal");
                    var span = document.getElementsByClassName("close")[0];
                    modal.style.display = "block";

                    // When the user clicks on <span> (x), close the modal
                    span.onclick = function() {
                        modal.style.display = "none";
                    }

                    // When the user clicks anywhere outside of the modal, close it
                    window.onclick = function(event) {
                        if (event.target == modal) {
                            modal.style.display = "none";
                        }
                    }
                });

                // Add click event listener to the booking button
                $("#bookingButton").click(function() {
                    window.location.href = "booking.jsp"; // Redirect to booking page
                });
            }

            // Initial fetch based on default values
            fetchAvailableCars($("#carType").val(), $("#date").val());

            // Event listeners for select change and datepicker change
            $("#carType, #date").change(function() {
                fetchAvailableCars($("#carType").val(), $("#date").val());
            });
        });
    </script>
</body>
</html>
