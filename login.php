<?php
require_once('db.php');

session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $stmt = $con->prepare("SELECT password FROM sign_up WHERE username = ?");
    $stmt->bind_param("s", $username);

    $stmt->execute();

    $stmt->bind_result($stored_password);
    $stmt->fetch();

    if ($stored_password !== null && $password == $stored_password) {
 
        $_SESSION['username'] = $username; 
        header("Location: review.php");
        exit();
    } else {
        
        $error_message = "Invalid username or password";
    }

    $stmt->close();
}

$con->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Review System - Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            width: 100%;
            background-color: #2466e2b6;
            color: #eeeeee;
            text-align: center;
            padding: 10px;
            box-sizing: border-box;
            margin: 0;
        }

        section {
            padding: 20px;
            max-width: 400px;
            margin: 0 auto;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        button {
            background-color: #2466e2b6;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #6f96dfa8;
        }

        footer {
            background-color: #2466e2b6;
            color: white;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        p.signup-link {
            text-align: center;
            margin-top: 15px;
        }

        p.signup-link a {
            color: #208dd6;
            text-decoration: none;
            font-weight: bold;
        }

        p.signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

    <header>
        <h1>Login to University Review System</h1>
    </header>

    <section>
        <form action="#" method="post" id="loginForm">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Login</button>
        </form>

        <?php
        if (isset($error_message)) {
            echo "<p style='color: red;'>$error_message</p>";
        }
        ?>

        <p class="signup-link">Don't have an account? <a href="signup.php">Sign up</a></p>
    </section>

    <footer>
        &copy; 2023 University Review System
    </footer>

</body>

</html>
