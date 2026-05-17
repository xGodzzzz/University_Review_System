<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Review System</title>
    <link rel="stylesheet" href="style.css">
    <script>
        function showRankingsPage() {
            window.location.href = 'ranking.php';
        }

        function showDepartmentsPage() {
            window.location.href = 'department.php';
        }

        function showFacultyPage() {
            window.location.href = 'faculty.php';
        }

        function showCoursePage() {
            window.location.href = 'course.php';
        }

        function showFacilitiesPage() {
            window.location.href = 'facilities.php';
        }

        function showLoginPage() {
            window.location.href = 'login.php';
        }

        function showSignupPage() {
            window.location.href = 'signup.php';
        }

        function openSearchResults() {
            const searchQuery = document.getElementById('universitySearch').value;
            document.getElementById('searchedUniversityInput').value = searchQuery;
            document.getElementById('searchForm').submit();
        }
    </script>
</head>
<body style="padding: 0;">

<header>
    <h1>University Review System</h1>
</header>

<nav>
    <a href="#" onclick="showHomePage()">Home</a>
    <a href="ranking.php"  onclick="showRankingsPage()">University Rankings</a>
    <a href="department.php" target="_blank" onclick="showDepartmentsPage()">Departments & Tution Fees</a>
    <a href="faculty.php" target="_blank" onclick="showFacultyPage()">Faculty</a>
    <a href="course.php" target="_blank" onclick="showCoursePage()">Course</a>
    <a href="facilities.php" target="_blank" onclick="showFacilitiesPage()">Facilities</a>
    <a href="login.php" target="_blank" onclick="showLoginPage()" class="login-btn">Login</a>
    <a href="signup.php" target="_blank" onclick="showSignupPage()" class="signup-btn">Sign Up</a>
</nav>

<section>
    <h2 style="text-align: center;">Welcome to the University Review System!</h2>

    <p>
        "Find your desired university more easily and faster"
    </p>

    <div class="search-bar">
        <input type="text" id="universitySearch" placeholder="Search for a university...">
        <button onclick="openSearchResults()">Search</button>
    </div>
<form id="searchForm" method="post" action="search.php"  style="display: none;">
    <input type="hidden" id="searchedUniversityInput" name="searched_university">
</form>

</section>

<footer>
    &copy; 2023 University Review System
</footer>

</body>
</html>
