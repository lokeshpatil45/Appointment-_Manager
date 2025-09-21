<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel | AppointmentPro</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    :root {
        --dark-blue: #0a192f;
        --navy: #172a45;
        --accent: #00b4d8;
        --text-light: #ffffff;
        --hover-bg: #112240;
    }

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
        display: flex;
        min-height: 100vh;
        background-color: #ffffff;
    }

    /* Sidebar Styling */
    .sidebar {
        width: 240px;
        background-color: var(--dark-blue);
        color: var(--text-light);
        display: flex;
        flex-direction: column;
        padding-top: 20px;
        box-shadow: 2px 0 10px rgba(0, 0, 0, 0.2);
        position: fixed;
        height: 100%;
    }

    .sidebar h2 {
        text-align: center;
        margin-bottom: 30px;
        color: var(--accent);
    }

    .sidebar a {
        padding: 15px 20px;
        color: var(--text-light);
        text-decoration: none;
        font-size: 16px;
        transition: background 0.3s ease;
        display: flex;
        align-items: center;
    }

    .sidebar a:hover {
        background-color: var(--hover-bg);
        padding-left: 25px;
    }

    .sidebar a i {
        margin-right: 10px;
        color: var(--accent);
    }

    /* Main Content */
    .main-content {
        margin-left: 240px;
        padding: 40px;
        flex-grow: 1;
        background-color: #ffffff;
    }

    .main-content h1 {
        color: var(--dark-blue);
        margin-bottom: 20px;
    }
</style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <h2><i class="fas fa-user-shield"></i> Admin</h2>
    <a href="A1_AddEmployee"><i class="fas fa-user-plus"></i> Add Employee</a>
    <a href="A2_ViewEmployees"><i class="fas fa-users"></i> View Employees</a>
    <a href="A3_viewUser"><i class="fas fa-user-friends"></i> View Users</a>
        <a href="index"><i class="fas fa-sign-out-alt"></i> Logout</a>
    
    
</div>

<!-- Main Content -->
<div class="main-content">
    <h1>Welcome to Admin Panel</h1>
    <p>This is your dashboard content area. You can add tables, charts, or any admin features here.</p>
</div>

</body>
</html>
