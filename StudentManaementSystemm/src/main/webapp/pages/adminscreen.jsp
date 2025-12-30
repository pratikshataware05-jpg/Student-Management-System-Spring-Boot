<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>

<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: 'Segoe UI', Arial, sans-serif;
    background: 
        linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.55)),
        url("https://images.unsplash.com/photo-1522202176988-66273c2fd55f");
    background-size: cover;
    background-position: center;
    min-height: 100vh;
}

/* NAVBAR */
.navbar {
    background: rgba(0, 0, 0, 0.75);
    padding: 15px 30px;
    color: white;
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
}

.navbar .brand {
    font-size: 20px;
    font-weight: bold;
}

.navbar a {
    color: white;
    margin-left: 20px;
    text-decoration: none;
    font-weight: 500;
}

.navbar a:hover {
    color: #ffc107;
}

/* MAIN CONTAINER */
.container {
    padding: 40px 20px;
    max-width: 1200px;
    margin: auto;
    color: white;
}

.container h2 {
    margin-bottom: 30px;
}

/* CARDS */
.cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 25px;
}

.card {
    background: white;
    color: #333;
    padding: 30px;
    border-radius: 12px;
    text-align: center;
    box-shadow: 0 15px 30px rgba(0,0,0,0.25);
    transition: transform 0.3s, box-shadow 0.3s;
}

.card:hover {
    transform: translateY(-8px);
    box-shadow: 0 25px 40px rgba(0,0,0,0.35);
}

.card h3 {
    margin-bottom: 10px;
}

.card p {
    font-size: 14px;
    color: #666;
}

/* BUTTON */
.card a {
    display: inline-block;
    margin-top: 15px;
    padding: 10px 20px;
    background: #667eea;
    color: white;
    text-decoration: none;
    border-radius: 25px;
    font-weight: bold;
}

.card a:hover {
    background: #5a67d8;
}

/* RESPONSIVE NAVBAR */
@media (max-width: 768px) {
    .navbar {
        flex-direction: column;
        align-items: flex-start;
    }

    .navbar a {
        margin: 10px 0 0;
    }

    .container {
        text-align: center;
    }
}
</style>
</head>

<body>

<!-- NAVBAR -->
<div class="navbar">
    <div class="brand">Admin Panel</div>
    <div>
        <a href="/addStudent">Add Student</a>
        <a href="/viewStudents">View Students</a>
        <a href="/logout">LogOut</a>
    </div>
</div>

<!-- CONTENT -->
<div class="container">
    <h2>Welcome Admin</h2>

    <div class="cards">
        <div class="card">
            <h3>Add Student</h3>
            <p>Create new student record</p>
            <a href="/addStudent">Open</a>
        </div>

        <div class="card">
            <h3>View Students</h3>
            <p>View, Edit & Delete student data</p>
            <a href="/viewStudents">Open</a>
        </div>
    </div>
</div>

</body>
</html>
