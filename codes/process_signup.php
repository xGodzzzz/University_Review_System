<?php
require_once('db.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    
    $fullName = $_POST['fullname'];
    $email = $_POST['email'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = "SELECT * FROM sign_up WHERE email = '$email'";
    $result = mysqli_query($con, $query);

    if ($result && mysqli_num_rows($result) > 0) {
        header("Location: registration_error.php");
        exit();
    }
    
    $query = "INSERT INTO sign_up (full_name, email, username, password) VALUES (?, ?, ?, ?)";
    $stmt = mysqli_prepare($con, $query);

    mysqli_stmt_bind_param($stmt, 'ssss', $fullName, $email, $username, $password);

    $success = mysqli_stmt_execute($stmt);

    if ($success) {
        header("Location: registration_success.php");
        exit();
    } else {
        echo "Error in user registration: " . mysqli_error($con);
    }

    mysqli_stmt_close($stmt);
}


header("Location: registration_error.php");
exit();
?>
