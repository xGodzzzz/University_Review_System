<?php
require_once('db.php');


if (isset($_GET['university']) && isset($_GET['department'])) {
    $selectedUniversity = mysqli_real_escape_string($con, $_GET['university']);
    $selectedDepartment = mysqli_real_escape_string($con, $_GET['department']);

    $query = "SELECT faculty_name FROM faculty WHERE name = '$selectedUniversity' AND dept_name = '$selectedDepartment'";
    $result = mysqli_query($con, $query);

    if ($result) {
        $faculties = [];

        while ($row = mysqli_fetch_assoc($result)) {
            $faculties[] = $row['faculty_name'];
        }

        echo json_encode($faculties);
    } else {
        echo json_encode(['error' => 'Error fetching faculties']);
    }
} else {
    echo json_encode(['error' => 'University and/or department parameters not provided']);
}

mysqli_close($con);
?>
