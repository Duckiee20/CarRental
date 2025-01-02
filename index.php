<?php


?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form </title>
  <link rel="stylesheet" href="style.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
  <div class="wrapper">
    <form action="login.php">
      <h1>Login</h1>
      <div class="input-box">
        <input type="text" placeholder="User_id" required>
        <i class='bx bxs-user'></i>
      </div>
      <div class="input-box">
        <input type="password" placeholder="Password" required>
        <i class='bx bxs-lock-alt' ></i>
      </div>

      <div class="signin">
    <p>Already have an account? <a href="homepage.php">Sign in</a>.</p>
  </div>
      <div class="register-link">
        <p>Dont have an account? <a href="registration.php">Register</a></p>
      </div>
    </form>
  </div>
</body>
</html>
