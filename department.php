<?php
require_once('db.php');

$validColumns = ['name', 'dept_name', 'total_cr', 'budget'];
$column = isset($_GET['sort']) ? $_GET['sort'] : 'name';
$column = in_array($column, $validColumns) ? $column : 'name';

$query = "SELECT * FROM dept ORDER BY name";
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
            color: #2466e2;
        }

        tbody tr:hover {
            background-color: #2466e2;
            color:#f5f5f5;
        }
        tbody tr {
            background-color: #f5f5f5;
            color:#2466e2;
        }
        h4
        {
            font-size :25px;
            color:#2466e2;
        }
        select 
        {
            font-size: 15px;
            padding: 12px;
            color:#2466e2;
            font-weight:bold;
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
    <h1>University Departments</h1>
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
<section>
    <h4>Select Department</h4>

    
    <select id="departmentDropdown" onchange="displayDepartmentDetails()">
        <option value="">Select Department</option>
        <?php
       
        $query = "SELECT DISTINCT dept_name FROM dept";
        $result = mysqli_query($con, $query);

        while ($row = mysqli_fetch_assoc($result)) {
            echo '<option value="' . $row['dept_name'] . '">' . $row['dept_name'] . '</option>';
        }

        mysqli_close($con);
        ?>
    </select>

   
    <table id="departmentDetailsTable" class="hidden">
        <thead>
            <tr>
                <th>University Name</th>
                <th>Department Name</th>
                <th>Total Credit</th>
                <th>Budget</th>
            </tr>
        </thead>
        <tbody id="departmentDetailsTableBody">
       
        </tbody>
    </table>
</section>

<script>

    function displayDepartmentDetails() {
        const selectedDepartment = document.getElementById('departmentDropdown').value;
        const departmentDetailsTable = document.getElementById('departmentDetailsTable');
        const departmentDetailsTableBody = document.getElementById('departmentDetailsTableBody');

        
        departmentDetailsTableBody.innerHTML = '';
        departmentDetailsTable.classList.add('hidden');

        if (selectedDepartment) {
            
            fetch('get_department_details.php?department=' + selectedDepartment)
                .then(response => response.json())
                .then(data => {
              
                    data.forEach(details => {
                        const row = document.createElement('tr');
                        row.innerHTML = `<td>${details.name}</td><td>${details.dept_name}</td><td>${details.total_cr}</td><td>${details.budget}</td>`;
                        departmentDetailsTableBody.appendChild(row);
                    });

                 
                    departmentDetailsTable.classList.remove('hidden');
                })
                .catch(error => console.error('Error fetching department details:', error));
        }
    }
</script>
</body>
</html>

</section>

<footer>
    &copy; 2023 University Review System
</footer>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        fetch('get_departments.php')
            .then(response => response.json())
            .then(data => {
                const tableBody = document.querySelector('#deptTable tbody');
                data.forEach(row => {
                    const tr = document.createElement('tr');
                    tr.innerHTML = `<td>${row.department_name}</td><td>${row.head_of_department}</td><td>${row.contact_email}</td><td>${row.location}</td>`;
                    tableBody.appendChild(tr);
                });
            })
            .catch(error => console.error('Error fetching department info:', error));
    });
</script>

</body>
</html>
