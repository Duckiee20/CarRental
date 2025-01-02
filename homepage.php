<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style3.css">
</head>
<body>
    <header>
        <a href="#" class="logo">car <span>.</span></a>
        <nav class="navbar">
            <a href="#about">about</a>
            <a href="#deals">deals</a>
            <a href="#review">reviews</a>
            <a href="#contact">contact</a>
        </nav>
    </header>
    <br>

    <section class="home" id="home">
        <div class="wrapper">
            <form action="selectcar.php" method="POST">
                <label for="pickup">
                    <span style="background-color:gold;"><b>Pick up date</b></span>
                </label>
                <input type="date" name="pickup" id="pickup" required><br><br>

                <label for="return">
                    <span style="background-color:gold"><b>Return date</b></span>
                </label>
                <input type="date" name="return" id="return" required><br><br>

                <button type="submit" style="height: 40px; width: 120px; background-color: red; color: white; font-size: 150%; border: none; cursor: pointer;">
                    Select Car
                </button>
            </form>
        </div>
    </section>
</body>
</html>
