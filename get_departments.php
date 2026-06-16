<?php
require_once('db.php');


if (isset($_GET['university'])) {
    $selectedUniversity = mysqli_real_escape_string($con, $_GET['university']);

    $query = "SELECT DISTINCT dept_name FROM faculty WHERE name = '$selectedUniversity'";
    $result = mysqli_query($con, $query);

    if ($result) {
        $departments = [];

        while ($row = mysqli_fetch_assoc($result)) {
            $departments[] = $row['dept_name'];
        }

        echo json_encode($departments);
    } else {
        echo json_encode(['error' => 'Error fetching departments']);
    }
} else {
    echo json_encode(['error' => 'University parameter not provided']);
}

mysqli_close($con);
?>
