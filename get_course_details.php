<?php
require_once('db.php');

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $selectedDepartment = $_GET['department'];

    $query = "SELECT * FROM course WHERE dept_name = '$selectedDepartment'";
    $result = mysqli_query($con, $query);

    if (!$result) {
        die('Error in query: ' . mysqli_error($con));
    }

    $courseDetails = array();

    while ($row = mysqli_fetch_assoc($result)) {
        $courseDetails[] = $row;
    }

    header('Content-Type: application/json');
    echo json_encode($courseDetails);

    mysqli_close($con);
}
?>
