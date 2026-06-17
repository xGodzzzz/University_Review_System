<?php
require_once('db.php');

$column = isset($_GET['column']) ? $_GET['column'] : 'name';
$order = isset($_GET['order']) ? $_GET['order'] : 'ASC';

$validColumns = ['name', 'scholarships', 'waiver', 'transportation'];
$column = in_array($column, $validColumns) ? $column : 'name';

$query = "SELECT * FROM facility ORDER BY $column $order";
$result = mysqli_query($con, $query);

if (!$result) {
    die('Error in query: ' . mysqli_error($con));
}

if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
   
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Review System - Departments</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('pic.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff; 
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

p {
    text-align: center;
    color: #fff;
    font-size: 1.4em;
}
h2 {
    text-align: center;
    font-size: 35px;

}
h4
        {
            font-size :25px;
            color:#2466e2;
        }
h3{
    text-align: center;
    font-size: 20px;

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

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border: 2px solid #2466e2;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border: 2px solid #a9c1ec;

        }

        th {
            background-color:#f5f5f5 ;
            color:#2466e2;
        }

        tbody tr:hover {
            background-color: #2466e2;
            color:#f5f5f5;
        }
        tbody tr {
            background-color: #f5f5f5;
            color:black;
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

    <script>
        function updateTable() {
            var selectedUniversity = document.getElementById('universityDropdown').value;
            var showScholarship = document.getElementById('scholarshipCheckbox').checked;
            var showTransport = document.getElementById('transportCheckbox').checked;

            var tableRows = <?php echo json_encode(mysqli_fetch_all($result, MYSQLI_ASSOC)); ?>;
            var tableBody = document.querySelector('#deptTable tbody');

           
            tableBody.innerHTML = '';

            
            tableRows.forEach(row => {
                if (
                    (selectedUniversity === 'All' || selectedUniversity === row.name) &&
                    (!showScholarship || (showScholarship && row.scholarships !== 'Unavailable')) &&
                    (!showTransport || (showTransport && row.transportation === 'YES'))
                ) {
                    const tr = document.createElement('tr');
                    tr.innerHTML = `<td>${row.name}</td><td>${row.scholarships}</td><td>${row.waiver}</td><td>${row.transportation}</td>`;
                    tableBody.appendChild(tr);
                }
            });
        }
    </script>
</head>
<body>
        <header>
            <h1>University Facilities</h1>
        </header>

        <nav>
            <a href="index.php">Home</a>
            <a href="ranking.php">University Rankings</a>
            <a href="department.php">Departments & Tution Fees</a>
            <a href="faculty.php">Faculty</a>
            <a href="course.php">Course</a>
            <a href="facilities.php">Facilities</a>
            <a href="login.php" class="login">Login</a>
            <a href="signup.php" class="signup">Sign Up</a>
        </nav>

    <section>
        <h3>Facilities Table</h3>

      
        <label for="universityDropdown">Select University:</label>
        <select id="universityDropdown" onchange="updateTable()">
            <option value="All">All</option>
            <?php
            $universities = mysqli_query($con, "SELECT DISTINCT name FROM facility");
            while ($row = mysqli_fetch_assoc($universities)) {
                echo "<option value='{$row['name']}'>{$row['name']}</option>";
            }
            ?>
        </select>

        <label for="scholarshipCheckbox">Show Scholarship</label>
        <input type="checkbox" id="scholarshipCheckbox" onchange="updateTable()">

        <label for="transportCheckbox">Show Transport</label>
        <input type="checkbox" id="transportCheckbox" onchange="updateTable()">

        <table id="deptTable">
            
            <thead>
                <tr>
                    <th onclick="sortTable('name')">University Name</th>
                    <th onclick="sortTable('scholarships')">Scholarship</th>
                    <th onclick="sortTable('waiver')">Waiver</th>
                    <th onclick="sortTable('transportation')">Transport</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($rows = mysqli_fetch_assoc($result)) {
                    ?>
                    <tr>
                        <td><?php echo $rows['name']; ?></td>
                        <td><?php echo $rows['scholarships']; ?></td>
                        <td><?php echo $rows['waiver']; ?></td>
                        <td><?php echo $rows['transportation']; ?></td>
                    </tr>
                    <?php
                }
                ?>
            </tbody>
        </table>
    </section>

    <footer>
    &copy; 2023 University Review System
    </footer>
</body>
</html>
