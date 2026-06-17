<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Review System - Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('pic.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
            overflow-x: hidden;
        }

        header {
            width: 100%;
            background-color: #eeeeee;
            color: #2466e2b6;
            text-align: center;
            padding: 10px;
            box-sizing: border-box;
            margin: 0;
        }

        nav {
            width: 100%;
            background-color: #2466e2;
            color: white;
            padding: 10px;
            text-align: center;
            display: flex;
            font-size: bold;
            justify-content: space-around;
        }

        nav a {
            text-decoration: none;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        nav a.login, nav a.signup {
            padding: 10px 12px;
        }

        nav a:hover {
            background-color: white;
            color: #2466e2;
        }

        section {
            padding: 20px;
            text-align: center;
        }

        h3 {
            color: #2466e2;
        }
     
section p {
    margin-top: 20px;
}

section a {
    display: inline-block;
    padding: 10px 20px;
    background-color: #2466e2;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

section a:hover {
    background-color: #0d45c4;
}

        footer {
            background-color: #2466e2;
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
    <h1>University Review System</h1>
</header>



<section>
    <h1><b>You have already submitted a review!</b></h3>
    <p><a href="index.php">Go back to Home</a></p>
</section>

<footer>
    &copy; 2023 University Review System
</footer>

</body>
</html>
