<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Error - University Review System</title>
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
            text-align: center;
        }

        p.error-message {
            color: red;
        }

        button {
            background-color: #2466e2b6;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 20px;
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
    </style>
</head>
<body>

<header>
    <h1>Registration Error</h1>
</header>

<section>
    <p class="error-message">Registration failed. This email address is already in use.</p>
    <button onclick="window.location.href='signup.php'">Back to Sign Up</button>
</section>

<footer>
    &copy; 2023 University Review System
</footer>

</body>
</html>
