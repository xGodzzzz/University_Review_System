<?php
require_once('db.php');

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $selectedDepartment = $_GET['department'];

    $query = "SELECT * FROM dept WHERE dept_name = '$selectedDepartment'";
    $result = mysqli_query($con, $query);

    if (!$result) {
        die('Error in query: ' . mysqli_error($con));
    }

    $departmentDetails = array();

    while ($row = mysqli_fetch_assoc($result)) {
        $departmentDetails[] = $row;
    }

    header('Content-Type: application/json');
    echo json_encode($departmentDetails);

    mysqli_close($con);
}
?>
