<?php
require_once('db.php');
session_start(); 

$universitiesQuery = "SELECT DISTINCT name FROM university";
$universitiesResult = mysqli_query($con, $universitiesQuery);

if (!$universitiesResult) {
    die('Error in query: ' . mysqli_error($con));
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  
    if (!isset($_SESSION['username'])) {
        echo 'User not authenticated.';
        exit();
    }

    $selectedUniversity = mysqli_real_escape_string($con, $_POST['university']);
    $rating = mysqli_real_escape_string($con, $_POST['rating']);
    $comment = mysqli_real_escape_string($con, $_POST['comment']);
    $username = $_SESSION['username']; 

 
    $checkReviewQuery = "SELECT * FROM reviews WHERE username = ? LIMIT 1";
    $checkReviewStmt = mysqli_prepare($con, $checkReviewQuery);

    if ($checkReviewStmt) {
        mysqli_stmt_bind_param($checkReviewStmt, 's', $username);
        mysqli_stmt_execute($checkReviewStmt);
        $existingReviewResult = mysqli_stmt_get_result($checkReviewStmt);
        $existingReview = mysqli_fetch_assoc($existingReviewResult);

        if ($existingReview) {
            header('Location: rep_rev.php');
            exit();
        }

        mysqli_stmt_close($checkReviewStmt);
    } else {
        echo 'Error in preparing check review statement: ' . mysqli_error($con);
        exit();
    }


    $insertQuery = "INSERT INTO reviews (name, rating, comment, username) VALUES (?, ?, ?, ?)";
    $insertStmt = mysqli_prepare($con, $insertQuery);

    if ($insertStmt) {
        mysqli_stmt_bind_param($insertStmt, 'siss', $selectedUniversity, $rating, $comment, $username);
        mysqli_stmt_execute($insertStmt);
        mysqli_stmt_close($insertStmt);

        header('Location: thanks.php');
        exit();
    } else {
        echo 'Error in preparing insert statement: ' . mysqli_error($con);
        exit();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
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
        }


        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            margin-top:10px;
        }


        label {
            display: block;
            margin-bottom: 10px;
            font-size: 18px;
            color: #2466e2;
        }


        select, input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }


        button {
            background-color: #2466e2;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
        }


        button:hover {
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


<nav>
    <a href="index.php">Home</a>
    <a href="ranking.php">University Rankings</a>
    <a href="department.php">Departments</a>
    <a href="faculty.php">Faculty</a>
    <a href="course.php">Course</a>
    <a href="facilities.php">Facilities</a>
    <a href="login.php" class="login">Login</a>
    <a href="signup.php" class="signup">Sign Up</a>
</nav>

    <form action="review.php" method="post">
        <h3 style="color:#2466e2">Submit a Review</h3>

        <label for="university">Select University:</label>
        <select name="university" required>
            <option value="">Select University</option>
            <?php
            while ($universityRow = mysqli_fetch_assoc($universitiesResult)) {
                echo '<option value="' . $universityRow['name'] . '">' . $universityRow['name'] . '</option>';
            }
            ?>
        </select>

        <label for="rating">Rating (1 to 5):</label>
        <input type="number" name="rating" id="rating" min="1" max="5" required>

        <label for="comment">Comment:</label>
        <textarea name="comment" id="comment" rows="4" required></textarea>

        <input type="hidden" name="username" value="<?php echo $_SESSION['username']; ?>">

        <button type="submit">Submit Review</button>
    </form>
</body>
</html>

<?php
mysqli_close($con);
?>



