<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Rentals</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2; /* Light gray background */
            color: #333; /* Dark text */
        }
        .container {
            max-width: 1200px;
            margin: auto;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #007bff; /* Blue color for heading */
        }
        .car-listing {
            display: flex;
            flex-wrap: wrap;
            justify-content: center; /* Center items horizontally */
            gap: 20px; /* Gap between car details */
        }
        .car-details {
            background-color: #fff; /* White background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: calc(33.33% - 40px); /* 33.33% width with margin */
        }
        .car-image {
            width: 100%;
            height: 200px; /* Adjust the height as needed */
            background-size: cover;
            background-position: center;
            border-radius: 10px;
            margin-bottom: 15px; /* Margin bottom to separate image and info */
        }
        .car-name {
            font-size: 20px;
            margin-bottom: 10px;
            color: black; /* Black color for car name */
        }
        .car-price {
            font-size: 16px;
            color: #555; /* Dark gray color for car price */
        }
        .book-now-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            background-color: #007bff; /* Blue button */
            color: #fff; /* White text */
            text-decoration: none; /* Remove underline */
            transition: background-color 0.3s; /* Smooth hover effect */
        }
        .book-now-button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Car Rentals</h1>
        
        <!-- Car Listings -->
        <div class="car-listing">
            <!-- Car 1 -->
            <div class="car-details">
                <div class="car-image" style="background-image: url('Resources/Car1.jpg');"></div>
                <div class="car-info">
                    <div class="car-name">Toyota Corolla</div>
                    <div class="car-price">$50/day</div>
                    <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Toyota Corolla">
                        <input type="hidden" name="price" value="50">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
                </div>
            </div>
            <!-- Car 2 -->
            <div class="car-details">
                <div class="car-image" style="background-image: url('Resources/Car2.jpg');"></div>
                <div class="car-info">
                    <div class="car-name">Honda Civic</div>
                    <div class="car-price">$60/day</div>
                    <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Honda Civic">
                        <input type="hidden" name="price" value="60">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
                </div>
            </div>
            <!-- Car 3 -->
            <div class="car-details">
                <div class="car-image" style="background-image: url('Resources/Car3.jpg');"></div>
                <div class="car-info">
                    <div class="car-name">BMW 3 Series</div>
                    <div class="car-price">$100/day</div>
                    <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="BMW 3 Series">
                        <input type="hidden" name="price" value="100">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
                </div>
            </div>
        
    <!-- Continue adding more cars -->
    <!-- Car 4 -->
    <div class="car-details">
        <div class="car-image" style="background-image:url('Resources/Car4.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Audi A4</div>
            <div class="car-price">$110/day</div>
             <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Audi A4">
                        <input type="hidden" name="price" value="110">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 5 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car5.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Mercedes-Benz C-Class</div>
            <div class="car-price">$120/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Mercedes-Benz C-Class">
                        <input type="hidden" name="price" value="120">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 6 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car6.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Ford Mustang</div>
            <div class="car-price">$90/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Ford Mustang">
                        <input type="hidden" name="price" value="90">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more cars -->
    <!-- Car 7 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car7.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Toyota Camry</div>
            <div class="car-price">$80/day</div>
           <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Toyota Camry">
                        <input type="hidden" name="price" value="80">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 8 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car8.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Nissan Altima</div>
            <div class="car-price">$70/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Nissan Altima">
                        <input type="hidden" name="price" value="70">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more cars -->
    <!-- Car 9 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car9.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Hyundai Elantra</div>
            <div class="car-price">$75/day</div>
           <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Hyundai Elantra">
                        <input type="hidden" name="price" value="75">
                        <button type="submit" class="book-now-button">Hyundai Elantra</button>
                    </form>
        </div>
    </div>
    <!-- Car 10 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car10.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Ford Focus</div>
            <div class="car-price">$70/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Ford Focus">
                        <input type="hidden" name="price" value="70">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more cars -->
    <!-- Car 11 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car11.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Chevrolet Impala</div>
            <div class="car-price">$85/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Chevrolet Impala">
                        <input type="hidden" name="price" value="85">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 12 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car12.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Kia Optima</div>
            <div class="car-price">$80/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Kia Optima">
                        <input type="hidden" name="price" value="80">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more cars -->
    <!-- Car 13 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car13.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Mazda 3</div>
            <div class="car-price">$75/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Mazda 3">
                        <input type="hidden" name="price" value="75">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 14 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car14.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Subaru Outback</div>
            <div class="car-price">$90/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Subaru Outback">
                        <input type="hidden" name="price" value="90">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more cars -->
    <!-- Car 15 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car15.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Jeep Wrangler</div>
            <div class="car-price">$110/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Jeep Wrangler">
                        <input type="hidden" name="price" value="110">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 16 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car16.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Toyota RAV4</div>
            <div class="car-price">$95/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Toyota RAV4">
                        <input type="hidden" name="price" value="95">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 17 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car17.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Honda CR-V</div>
            <div class="car-price">$100/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Honda CR-V">
                        <input type="hidden" name="price" value="100">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more cars -->
    <!-- Car 18 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car18.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Ford Escape</div>
            <div class="car-price">$90/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Ford Escape">
                        <input type="hidden" name="price" value="90">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 19 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car19.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Cadillac Escalade</div>
            <div class="car-price">$400/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Cadillac Escalade">
                        <input type="hidden" name="price" value="400">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 20 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car20.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Hyundai Tucson</div>
            <div class="car-price">$80/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Hyundai Tucson">
                        <input type="hidden" name="price" value="80">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more cars -->
    <!-- Car 21 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car21.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Kia Sportage</div>
            <div class="car-price">$75/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Kia Sportage">
                        <input type="hidden" name="price" value="75">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 22 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car22.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Mazda CX-5</div>
            <div class="car-price">$85/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Mazda CX-5">
                        <input type="hidden" name="price" value="85">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more cars -->
    <!-- Car 23 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car23.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Subaru Forester</div>
            <div class="car-price">$95/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Subaru Forester">
                        <input type="hidden" name="price" value="95">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 24 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car24.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Mercedes-Benz S-Class</div>
            <div class="car-price">$300/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Mercedes-Benz S-Class">
                        <input type="hidden" name="price" value="300">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more luxury cars -->
    <!-- Car 25 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car25.jpg');"></div>
        <div class="car-info">
            <div class="car-name">BMW 7 Series</div>
            <div class="car-price">$280/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="BMW 7 Series">
                        <input type="hidden" name="price" value="280">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 26 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car26.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Audi A8</div>
            <div class="car-price">$270/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Audi A8">
                        <input type="hidden" name="price" value="270">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more luxury cars -->
    <!-- Car 27 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car27.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Lexus LS</div>
            <div class="car-price">$250/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Lexus LS">
                        <input type="hidden" name="price" value="250">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 28 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car28.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Lamborghini Huracan</div>
            <div class="car-price">$1000/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Lamborghini Huracan">
                        <input type="hidden" name="price" value="1000">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more luxury cars -->
    <!-- Car 29 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car29.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Ferrari 488 GTB</div>
            <div class="car-price">$1200/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Ferrari 488 GTB">
                        <input type="hidden" name="price" value="1200">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 30 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car30.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Rolls-Royce Phantom</div>
            <div class="car-price">$2000/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Rolls-Royce Phantom">
                        <input type="hidden" name="price" value="2000">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more luxury cars -->
    <!-- Car 31 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car31.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Bentley Continental GT</div>
            <div class="car-price">$1500/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Bentley Continental GT">
                        <input type="hidden" name="price" value="1500">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 32 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car32.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Porsche 911</div>
            <div class="car-price">$700/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Porsche 911">
                        <input type="hidden" name="price" value="700">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more luxury cars -->
    <!-- Car 33 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car33.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Maserati GranTurismo</div>
            <div class="car-price">$800/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Maserati GranTurismo">
                        <input type="hidden" name="price" value="800">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Car 34 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car34.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Aston Martin DB11</div>
            <div class="car-price">$900/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Aston Martin DB11">
                        <input type="hidden" name="price" value="900">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>
    <!-- Continue adding more luxury cars -->
    <!-- Car 35 -->
    <div class="car-details">
        <div class="car-image" style="background-image: url('Resources/Car35.jpg');"></div>
        <div class="car-info">
            <div class="car-name">Bugatti Chiron</div>
            <div class="car-price">$5000/day</div>
            <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Bugatti Chiron">
                        <input type="hidden" name="price" value="5000">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
        </div>
    </div>

<!-- Car 36 -->
<div class="car-details">
    <div class="car-image" style="background-image: url('Resources/Car36.jpg');"></div>
    <div class="car-info">
        <div class="car-name">Pagani Huayra</div>
        <div class="car-price">$3000/day</div>
        <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Pagani Huayra">
                        <input type="hidden" name="price" value="3000">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
    </div>
</div>

<!-- Car 37: Pagani Huayra -->
<div class="car-details">
    <div class="car-image" style="background-image: url('Resources/Car37.jpg');"></div>
    <div class="car-info">
        <div class="car-name">Range Rover Velar</div>
        <div class="car-price">$600/day</div>
        <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Range Rover Velar">
                        <input type="hidden" name="price" value="600">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
    </div>
</div>

<!-- Car 38: Koenigsegg Jesko -->
<div class="car-details">
    <div class="car-image" style="background-image: url('Resources/Car38.jpg');"></div>
    <div class="car-info">
        <div class="car-name">Koenigsegg Jesko</div>
        <div class="car-price">$4000/day</div>
        <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Koenigsegg Jesko">
                        <input type="hidden" name="price" value="4000">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
    </div>
</div>

<!-- Car 39: McLaren Speedtail -->
<div class="car-details">
    <div class="car-image" style="background-image: url('Resources/Car39.jpg');"></div>
    <div class="car-info">
        <div class="car-name">McLaren Speedtail</div>
        <div class="car-price">$3500/day</div>
        <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="McLaren Speedtail">
                        <input type="hidden" name="price" value="3500">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
    </div>
</div>

<!-- Car 40: Bentley Mulsanne -->
<div class="car-details">
    <div class="car-image" style="background-image: url('Resources/Car40.jpg');"></div>
    <div class="car-info">
        <div class="car-name">Bentley Mulsanne</div>
        <div class="car-price">$2800/day</div>
        <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Bentley Mulsanne">
                        <input type="hidden" name="price" value="2800">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
    </div>
</div>

<!-- Car 41: Rolls Royce Cullinan -->
<div class="car-details">
    <div class="car-image" style="background-image: url('Resources/Car41.jpg');"></div>
    <div class="car-info">
        <div class="car-name">Rolls Royce Cullinan</div>
        <div class="car-price">$4500/day</div>
        <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Rolls Royce Cullinan">
                        <input type="hidden" name="price" value="4500">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
    </div>
</div>

<!-- Car 42: Maybach S-Class -->
<div class="car-details">
    <div class="car-image" style="background-image: url('Resources/Car42.jpg');"></div>
    <div class="car-info">
        <div class="car-name">Maybach S-Class</div>
        <div class="car-price">$3200/day</div>
        <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Maybach S-Class">
                        <input type="hidden" name="price" value="3200">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
    </div>
</div>

<!-- Car 43: Aston Martin Valkyrie -->
<div class="car-details">
    <div class="car-image" style="background-image: url('Resources/Car43.jpg');"></div>
    <div class="car-info">
        <div class="car-name">Aston Martin Valkyrie</div>
        <div class="car-price">$5000/day</div>
        <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Aston Martin Valkyrie">
                        <input type="hidden" name="price" value="5000">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
    </div>
</div>

<!-- Car 44: Lamborghini Aventador -->
<div class="car-details">
    <div class="car-image" style="background-image: url('Resources/Car44.jpg');"></div>
    <div class="car-info">
        <div class="car-name">Lamborghini Aventador</div>
        <div class="car-price">$2500/day</div>
        <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Lamborghini Aventador">
                        <input type="hidden" name="price" value="2500">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
    </div>
</div>

<!-- Car 45: Ferrari SF90 Stradale -->
<div class="car-details">
    <div class="car-image" style="background-image: url('Resources/Car45.jpg');"></div>
    <div class="car-info">
        <div class="car-name">Ferrari SF90 Stradale</div>
        <div class="car-price">$3000/day</div>
        <!-- Pass car details to checkout page -->
                    <form action="checkout.jsp" method="post">
                        <input type="hidden" name="carName" value="Ferrari SF90 Stradale">
                        <input type="hidden" name="price" value="3000">
                        <button type="submit" class="book-now-button">Book Now</button>
                    </form>
    </div>
</div>

</div>
</div>
    
</body>
</html>
