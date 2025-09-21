<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Dashboard</title>
    <style>
        :root {
            --dark-blue: #0a192f;
            --accent: #00b4d8;
            --white: #ffffff;
            --hover: #e3f2fd;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #ffffff;
        }

        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: var(--dark-blue);
            color: var(--white);
            position: fixed;
            display: flex;
            flex-direction: column;
            padding-top: 30px;
        }

        .sidebar h2 {
            color: var(--accent);
            text-align: center;
            margin-bottom: 30px;
            font-size: 22px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        .sidebar a {
            display: flex;
            align-items: center;
            gap: 10px;
            color: var(--white);
            text-decoration: none;
            padding: 12px 20px;
            transition: background-color 0.3s;
        }

        .sidebar a:hover {
            background-color: var(--accent);
        }

        .sidebar i {
            font-size: 16px;
        }

        .content {
            margin-left: 250px;
            padding: 40px;
        }

        .content h1 {
            color: var(--dark-blue);
        }

        .content p {
            color: #333;
            font-size: 15px;
        }
    </style>
    <!-- Font Awesome CDN for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

    <div class="sidebar">
        <h2><i class="fas fa-user-tie"></i> User</h2>
        <a href="U3_ViewEmployee"><i class="fas fa-users"></i> View Employee</a>
        <a href="U4_BookAppointment"><i class="fas fa-calendar-plus"></i> Book Appointment</a>
        <a href="U5_ViewAppointment"><i class="fas fa-eye"></i> View Appointment</a>
        <a href="index"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>

    <div class="content">
        <h1>Welcome to Employee Panel</h1>
        <p>Use the sidebar to navigate your employee and appointment tasks.</p>
    </div>

</body>
</html>
