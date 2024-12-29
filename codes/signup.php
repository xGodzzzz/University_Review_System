
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Review System - Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #2466e2b6;
            color: white;
            padding: 10px;
            text-align: center;
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
            background-color: #2466e2b6;
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

        p.login-link {
            text-align: center;
            margin-top: 15px;
        }

        p.login-link a {
            color: #2466e2b6;
            text-decoration: none;
            font-weight: bold;
            padding: 8px 15px;
            border: 2px solid #292b2a;
            border-radius: 5px;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        p.login-link a:hover {
            background-color: #4c85eeb6;
            color: white;
        }

        .note {
        display: block;
        margin-top: -5px;
        margin-bottom: 20px;
        color: #888;
        font-size: 12px;
    }

    </style>
</head>
<body>

<header>
    <h1>Sign Up for University Review System</h1>
</header>

<section>
    <form action="process_signup.php" method="post" id="signupForm">
        <label for="fullname">Full Name:</label>
        <input type="text" id="fullname" name="fullname" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" pattern=".+@(uiu\.ac\.bd|aust\.edu|diu\.edu\.bd|g\.bracu\.ac\.bd|northsouth\.edu|student\.aiub\.edu|ulab\.edu\.bd)$" required>
        <span class="note">Please use your university email only!! For example: xyz@uiu.ac.bd</span>



        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Sign Up</button>
    </form>

    <p class="login-link">Already have an account? <a href="login.php">Login</a></p>
</section>

<footer>
    &copy; 2023 University Review System
</footer>

</body>
</html>
