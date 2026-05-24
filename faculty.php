<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Review System - Faculties</title>
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
            /*text-align: center;*/
            font-size: 25px;
            color:#2466e2;
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
        footer {
            background-color: #2466e2;
            color: white;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
       
        .hidden {
            display: none;
        }
        select 
        {
            font-size: 15px;
            padding: 12px;
            color:#2466e2;
            font-weight:bold;
        }
    </style>
</head>
<body>

<header>
    <h1>University Faculties</h1>
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
    <h3>Select University and Department</h3>

  
    <select id="universityDropdown" onchange="updateTable()">
        <option value="">Select University</option>
        <?php
        require_once('db.php');

        $query = "SELECT DISTINCT name FROM faculty"; 
        $result = mysqli_query($con, $query);

        while ($row = mysqli_fetch_assoc($result)) {
            echo '<option value="' . $row['name'] . '">' . $row['name'] . '</option>';
        }

        mysqli_close($con);
        ?>
    </select>

    <select id="departmentDropdown" class="hidden" onchange="updateTable()">
        <option value=""><h4>Select Department</h4></option>
    
    </select>


    <table id="facultyTable" class="hidden">
        <thead>
            <tr>
                <th>University Name</th>
                <th>Department Name</th>
                <th>Faculty Name</th>
            </tr>
        </thead>
        <tbody id="facultyTableBody">
          
        </tbody>
    </table>
</section>

<footer>
    &copy; 2023 University Review System
</footer>

<script>
    
    function updateTable() {
        const selectedUniversity = document.getElementById('universityDropdown').value;
        const selectedDepartment = document.getElementById('departmentDropdown').value;

        const departmentDropdown = document.getElementById('departmentDropdown');
        const facultyTable = document.getElementById('facultyTable');

      
        departmentDropdown.innerHTML = '<option value="">Select Department</option>';
        facultyTable.classList.add('hidden');

        if (selectedUniversity) {
         
            fetch('get_departments.php?university=' + selectedUniversity)
                .then(response => response.json())
                .then(data => {
                    
                    const departmentDropdown = document.getElementById('departmentDropdown');
                    departmentDropdown.innerHTML = '<option value="">Select Department</option>';

                    
                    departmentDropdown.classList.remove('hidden');

                    
                    data.forEach(department => {
                        const option = document.createElement('option');
                        option.value = department;
                        option.textContent = department;
                        departmentDropdown.appendChild(option);
                    });
                })
                .catch(error => console.error('Error fetching departments:', error));
        }

        
        fetch('get_faculties.php?university=' + selectedUniversity + '&department=' + selectedDepartment)
            .then(response => response.json())
            .then(data => {
               
                facultyTable.classList.remove('hidden');

                
                const facultyTableBody = document.getElementById('facultyTableBody');
                facultyTableBody.innerHTML = '';

                data.forEach(faculty => {
                    const row = document.createElement('tr');
                    const universityCell = document.createElement('td');
                    universityCell.textContent = selectedUniversity;
                    const departmentCell = document.createElement('td');
                    departmentCell.textContent = selectedDepartment;
                    const facultyCell = document.createElement('td');
                    facultyCell.textContent = faculty;
                    row.appendChild(universityCell);
                    row.appendChild(departmentCell);
                    row.appendChild(facultyCell);
                    facultyTableBody.appendChild(row);
                });
            })
            .catch(error => console.error('Error fetching faculties:', error));
    }
</script>

</body>
</html>
