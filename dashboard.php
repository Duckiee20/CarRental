<?php
session_start();

// Check if the user is logged in
if (!isset($_SESSION['user_id']) || !isset($_SESSION['user_email'])) {
    header("Location: index.php");
    exit();
}

$user_email = $_SESSION['user_email'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
</head>
<body>
    <h1>Welcome, <?php echo $user_email; ?>!</h1>

    <p><a href="profile.php">View Profile</a></p>
    <p><a href="car_rentals.php">Car Rentals</a></p>
    <p><a href="logout.php">Logout</a></p>
</body>
</html>
