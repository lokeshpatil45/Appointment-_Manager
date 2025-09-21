<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee | Admin Panel</title>
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

    .sidebar {
        width: 240px;
        background-color: var(--dark-blue);
        color: var(--text-light);
        display: flex;
        flex-direction: column;
        padding-top: 20px;
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

    .main-content {
        margin-left: 240px;
        flex-grow: 1;
        background-color: #ffffff;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        padding: 40px;
    }

    .form-container {
        width: 100%;
        max-width: 500px;
        background: #f8f9fa;
        padding: 30px;
        border: 1px solid #ddd;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    }

    .form-container h1 {
        text-align: center;
        color: var(--dark-blue);
        margin-bottom: 25px;
    }

    form input[type="text"],
    form input[type="password"] {
        width: 100%;
        padding: 12px 15px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 16px;
    }

    form input[type="submit"] {
        background-color: var(--accent);
        color: white;
        border: none;
        padding: 12px 20px;
        font-size: 16px;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        width: 100%;
    }

    form input[type="submit"]:hover {
        background-color: #0096c7;
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
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="form-container">
            <h1>Add New Employee</h1>
            <form action="AddEmployee" method="post">
                <input type="text" name="emailId" placeholder="Enter Email" required>
                <input type="text" name="name" placeholder="Enter Name" required>
                <input type="text" name="designation" placeholder="Enter Designation" required>
                <input type="text" name="department" placeholder="Enter Department" required>
                <input type="text" name="contact" placeholder="Enter Contact" required>
                <input type="password" name="password" placeholder="Enter Password" required>
                <input type="submit" value="Add Employee">
            </form>
        </div>
    </div>

</body>
</html>
