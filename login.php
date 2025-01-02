<?php
require_once('connect.php');

if(isset($_POST['username']) && isset($_POST['password'])){
    $username = $_POST['username'];
    $password = $_POST['password'];
    $sql = "SELECT * FROM customers WHERE user_id = '$username' AND password = '$password'";
    $result = mysqli_query($conn, $sql);

    if(mysqli_num_rows($result) > 0){
        
        header("Location: homepage.php");
    }
    else{
        echo "Wrong username or password";
    }
}
?>
