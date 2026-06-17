<?php
require_once('db.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Review System - Search Result</title>
    <link rel="stylesheet" href="style.css">

    <style>
        section#reviews {
            max-height: 400px; 
            overflow-y: auto; 
        }
    </style>
</head>
<body style="padding: 0;">

<header>
    <h1>University Review System</h1>
</header>

<nav>
    <a href="index.php#" onclick="showHomePage()">Home</a>
    <a href="ranking.php"  onclick="showRankingsPage()">University Rankings</a>
    <a href="department.php"  onclick="showDepartmentsPage()">Departments & Tution Fees</a>
    <a href="faculty.php"  onclick="showFacultyPage()">Faculty</a>
    <a href="course.php"  onclick="showCoursePage()">Course</a>
    <a href="facilities.php"  onclick="showFacilitiesPage()">Facilities</a>
    <a href="login.php"  onclick="showLoginPage()" class="login-btn">Login</a>
    <a href="signup.php"  onclick="showSignupPage()" class="signup-btn">Sign Up</a>
</nav>

<section id="reviews" style="background-color: #2466e2 ;padding: 10px; margin:60px;">
    <?php

    function getUniversityRanks($con, $searchedUniversity) {
        $rankingQuery = "SELECT uni_rank, QS_rank, THE_rank FROM ranking WHERE name = ?";
        $rankingStmt = mysqli_prepare($con, $rankingQuery);

        if ($rankingStmt) {
            mysqli_stmt_bind_param($rankingStmt, 's', $searchedUniversity);
            mysqli_stmt_execute($rankingStmt);
            $rankingResult = mysqli_stmt_get_result($rankingStmt);
            $rankingData = mysqli_fetch_assoc($rankingResult);
            mysqli_stmt_close($rankingStmt);

            return $rankingData;
        } else {
            echo "Error in preparing ranking statement: " . mysqli_error($con);
            return false;
        }
    }

    function getReviews($con, $searchedUniversity) {
        $reviewsQuery = "SELECT comment FROM reviews WHERE name = ?";
        $reviewsStmt = mysqli_prepare($con, $reviewsQuery);

        if ($reviewsStmt) {
            mysqli_stmt_bind_param($reviewsStmt, 's', $searchedUniversity);
            mysqli_stmt_execute($reviewsStmt);
            $reviewsResult = mysqli_stmt_get_result($reviewsStmt);
            $reviews = [];

            while ($row = mysqli_fetch_assoc($reviewsResult)) {
                $reviews[] = $row['comment'];
            }

            mysqli_stmt_close($reviewsStmt);

            return $reviews;
        } else {
            echo "Error in preparing reviews statement: " . mysqli_error($con);
            return false;
        }
    }

    function generateSummary($reviews) {
        $apiUrl = "https://api-inference.huggingface.co/models/facebook/bart-large-cnn";


        $combinedReviews = implode("\n", (array) $reviews);

        $data = [
            'inputs' => $combinedReviews,
            'options' => ['use_cache' => true],
        ];

        $context = stream_context_create([
            'http' => [
                'header' => "Content-Type: application/json\r\n",
                'method' => 'POST',
                'content' => json_encode($data),
            ],
        ]);

        $result = file_get_contents($apiUrl, false, $context);

        if ($result === false) {
            echo "Error fetching summary from Hugging Face API";
            return "";
        }

        $response = json_decode($result, true);


        if (isset($response[0]['summary_text'])) {
            return $response[0]['summary_text'];
        } else {
            echo "Unexpected response format from Hugging Face API";
            return "";
        }
    }

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $searchedUniversity = $_POST['searched_university'];

        $rankingData = getUniversityRanks($con, $searchedUniversity);
        $reviews = getReviews($con, $searchedUniversity);

        if ($rankingData) {
            echo "<h2>University Rank</h2>";
            echo "<p><b>University Name: " . $searchedUniversity . "</b></p>";
            echo "<p><b>University Rank In Bangladesh: " . $rankingData['uni_rank'] . "</b></p>";
            echo "<p><b>University Rank QS ranking wise: " . $rankingData['QS_rank'] . "</b></p>";
            echo "<p><b>University Rank THE ranking wise: " . $rankingData['THE_rank'] . "</b></p>";
        } else {
            echo "<p>University not found!</p>";
        }

        if ($reviews) {
            $summary = generateSummary(implode("\n", $reviews));
            echo "<h2>Summary:</h2>";
            echo "<p>" . $summary . "</p>";
            
            echo "<h2>Reviews:</h2>";
            $count = 1;
            foreach ($reviews as $review) {
                echo "<p>" . $count . ") " . $review . "</p>";
                $count++;
            }

            
        } else {
            echo "<p>No reviews available.</p>";
        }
    }


    mysqli_close($con);
    ?>
</section>

</body>
</html>
