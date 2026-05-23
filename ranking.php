<?php
require_once('db.php');


$column = isset($_GET['column']) ? $_GET['column'] : 'uni_rank';
$order = isset($_GET['order']) ? $_GET['order'] : 'ASC';


$validColumns = ['name', 'uni_rank', 'QS_rank', 'THE_rank'];
$column = in_array($column, $validColumns) ? $column : 'uni_rank';

$query = "SELECT * FROM ranking ORDER BY $column $order";
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
    <title>University Review System - Rankings</title>
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
        tbody tr {
            background-color:#f5f5f5;
            color: #2466e2;
        }
        tbody tr:hover {
            background-color: #2466e2;
            color: #f5f5f5;
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
    <h1>University Rankings</h1>
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
    <h3>Ranking Table</h3>

    <table id="rankingsTable">
        <thead>
            <tr>
                <th onclick="sortTable('name')">University Name</th>
                <th onclick="sortTable('uni_rank')">Uni_Rank</th>
                <th onclick="sortTable('QS_rank')">QS_Rank</th>
                <th onclick="sortTable('THE_rank')">THE_Rank</th>
            </tr>
        </thead>
        <tbody>
        <?php 
            while ($rows = mysqli_fetch_assoc($result)) { 
                ?> 
                <tr> 
                    <td><?php echo $rows['name']; ?></td> 
                    <td><?php echo $rows['uni_rank']; ?></td> 
                    <td><?php echo $rows['QS_rank']; ?></td> 
                    <td><?php echo $rows['THE_rank']; ?></td> 
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

<script>
    function sortTable(column) {
            window.location.href = `ranking.php?column=${column}&order=<?php echo $order === 'ASC' ? 'DESC' : 'ASC'; ?>`;
        }

    document.addEventListener('DOMContentLoaded', function () {
        fetch('get_rankings.php')
            .then(response => response.json())
            .then(data => {
                const tableBody = document.querySelector('#rankingsTable tbody');
                data.forEach(row => {
                    const tr = document.createElement('tr');
                    tr.innerHTML = `<td>${row.university_name}</td><td>${row.ranking}</td>`;
                    tableBody.appendChild(tr);
                });
            })
            .catch(error => console.error('Error fetching rankings:', error));
    });
</script>

</body>
</html>
