<?php
include "connect.php";

// Handle form submissions for Add, Update, and Delete
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['add_car'])) {
        $license_plate = $_POST['license_plate'];
        $status = $_POST['status'];
        $seating_capacity = $_POST['seating_capacity'];
        $car_type = $_POST['car_type'];
        $model = $_POST['model'];
        $brand = $_POST['brand'];
        $color = $_POST['color'];

        $sql = "INSERT INTO CAR (License_plate, Status, Seating_Capacity, Car_Type, Model, Brand, Color)
                VALUES ('$license_plate', '$status', $seating_capacity, '$car_type', '$model', '$brand', '$color')";

        if (mysqli_query($conn, $sql)) {
            echo "<script>alert('Car added successfully!');</script>";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    }

    if (isset($_POST['delete_car'])) {
        $license_plate = $_POST['license_plate'];

        $sql = "DELETE FROM CAR WHERE License_plate = '$license_plate'";

        if (mysqli_query($conn, $sql)) {
            echo "<script>alert('Car deleted successfully!');</script>";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    }

    if (isset($_POST['update_car'])) {
        $license_plate = $_POST['license_plate'];
        $status = $_POST['status'];
        $seating_capacity = $_POST['seating_capacity'];
        $car_type = $_POST['car_type'];
        $model = $_POST['model'];
        $brand = $_POST['brand'];
        $color = $_POST['color'];

        $sql = "UPDATE CAR 
                SET Status='$status', Seating_Capacity=$seating_capacity, Car_Type='$car_type', 
                    Model='$model', Brand='$brand', Color='$color'
                WHERE License_plate = '$license_plate'";

        if (mysqli_query($conn, $sql)) {
            echo "<script>alert('Car updated successfully!');</script>";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
    }
}

// Fetch all cars
$cars = mysqli_query($conn, "SELECT * FROM CAR");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Cars</title>
</head>
<body>
    <h1>Manage Cars</h1>

    <h2>Add a Car</h2>
    <form method="POST">
        <label>License Plate:</label><input type="text" name="license_plate" required><br>
        <label>Status:</label><input type="text" name="status" required><br>
        <label>Seating Capacity:</label><input type="number" name="seating_capacity" required><br>
        <label>Car Type:</label><input type="text" name="car_type" required><br>
        <label>Model:</label><input type="text" name="model" required><br>
        <label>Brand:</label><input type="text" name="brand" required><br>
        <label>Color:</label><input type="text" name="color" required><br>
        <button type="submit" name="add_car">Add Car</button>
    </form>

    <h2>All Cars</h2>
    <table border="1">
        <tr>
            <th>License Plate</th>
            <th>Status</th>
            <th>Seating Capacity</th>
            <th>Car Type</th>
            <th>Model</th>
            <th>Brand</th>
            <th>Color</th>
            <th>Actions</th>
        </tr>
        <?php while ($row = mysqli_fetch_assoc($cars)) { ?>
        <tr>
            <td><?php echo $row['License_plate']; ?></td>
            <td><?php echo $row['Status']; ?></td>
            <td><?php echo $row['Seating_Capacity']; ?></td>
            <td><?php echo $row['Car_Type']; ?></td>
            <td><?php echo $row['Model']; ?></td>
            <td><?php echo $row['Brand']; ?></td>
            <td><?php echo $row['Color']; ?></td>
            <td>
                <form method="POST" style="display:inline-block;">
                    <input type="hidden" name="license_plate" value="<?php echo $row['License_plate']; ?>">
                    <button type="submit" name="delete_car">Delete</button>
                </form>
                <!-- Update functionality can be added here -->
            </td>
        </tr>
        <?php } ?>
    </table>
</body>
</html>
