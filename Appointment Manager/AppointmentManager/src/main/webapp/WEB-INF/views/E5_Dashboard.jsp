<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Dashboard</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    :root {
        --dark-blue: #0a192f;
        --accent: #00b4d8;
        --white: #ffffff;
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
        background-color: var(--white);
        overflow: hidden;
    }

    .sidebar {
        width: 250px;
        background-color: var(--dark-blue);
        color: var(--white);
        display: flex;
        flex-direction: column;
        padding-top: 20px;
        height: 100vh;
        position: fixed;
        left: 0;
        top: 0;
        animation: slideIn 0.6s ease forwards;
        transform: translateX(-100%);
    }

    @keyframes slideIn {
        to {
            transform: translateX(0);
        }
    }

    .sidebar h2 {
        text-align: center;
        margin-bottom: 30px;
        color: var(--accent);
    }

    .sidebar a {
        padding: 15px 20px;
        color: var(--white);
        text-decoration: none;
        font-size: 16px;
        transition: background 0.3s, padding-left 0.3s;
        display: block;
    }

    .sidebar a:hover {
        background-color: var(--hover-bg);
        padding-left: 30px;
    }

    .main-content {
        margin-left: 250px;
        padding: 40px;
        flex: 1;
        animation: fadeIn 0.8s ease;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
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
    <h2><i class="fas fa-user"></i> Employee</h2>
    <a href="E2_ViewPendingAppointment"><i class="fas fa-hourglass-half"></i> View Pending Appointments</a>
    <a href="E3_ViewApprovedAppointments"><i class="fas fa-check-circle"></i> View Approved Appointments</a>
    <a href="E4_ViewDisapprovedAppointments"><i class="fas fa-times-circle"></i> View Disapproved Appointments</a>
    <a href="index"><i class="fas fa-sign-out-alt"></i> Logout</a>
</div>

<!-- Main Content -->
<div class="main-content">
    <h1>Welcome to Employee Panel</h1>
    <p>Use the sidebar to navigate your appointment tasks.</p>
</div>

</body>
</html>
