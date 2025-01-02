<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Rental Listing</title>
    <link rel="stylesheet" href="style4.css">
</head>
<body>
    <div class="container">
        <div class="car">
            <img src="https://via.placeholder.com/200x120" alt="Car 1">
            <h3>Honda Civic</h3>
            <p>Price: $50/day</p>
            <form action="payment.php" method="POST">
                <input type="hidden" name="car_name" value="Honda Civic">
                <input type="hidden" name="price" value="50">
                <button type="submit">Rent Now</button>
            </form>
        </div>
        <div class="car">
            <img src="https://via.placeholder.com/200x120" alt="Car 2">
            <h3>Toyota Corolla</h3>
            <p>Price: $45/day</p>
            <form action="payment.php" method="POST">
                <input type="hidden" name="car_name" value="Toyota Corolla">
                <input type="hidden" name="price" value="45">
                <button type="submit">Rent Now</button>
            </form>
        </div>
        <div class="car">
            <img src="https://via.placeholder.com/200x120" alt="Car 3">
            <h3>Ford Mustang</h3>
            <p>Price: $80/day</p>
            <form action="payment.php" method="POST">
                <input type="hidden" name="car_name" value="Ford Mustang">
                <input type="hidden" name="price" value="80">
                <button type="submit">Rent Now</button>
            </form>
        </div>
        <div class="car">
            <img src="https://via.placeholder.com/200x120" alt="Car 4">
            <h3>Chevrolet Camaro</h3>
            <p>Price: $75/day</p>
            <form action="payment.php" method="POST">
                <input type="hidden" name="car_name" value="Chevrolet Camaro">
                <input type="hidden" name="price" value="75">
                <button type="submit">Rent Now</button>
            </form>
        </div>
        <div class="car">
            <img src="https://via.placeholder.com/200x120" alt="Car 5">
            <h3>BMW 3 Series</h3>
            <p>Price: $90/day</p>
            <form action="payment.php" method="POST">
                <input type="hidden" name="car_name" value="BMW 3 Series">
                <input type="hidden" name="price" value="90">
                <button type="submit">Rent Now</button>
            </form>
        </div>
    </div>
</body>
</html>
