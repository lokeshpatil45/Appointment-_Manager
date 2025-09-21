<%@page import="com.r3sys.appointment.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Employees | Admin Panel</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    :root {
        --dark-blue: #0a192f;
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
        padding: 40px;
        overflow-x: auto;
    }

    h1 {
        color: var(--dark-blue);
        margin-bottom: 30px;
        text-align: center;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background: #f8f9fa;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        border-radius: 8px;
        overflow: hidden;
    }

    th, td {
        padding: 12px 16px;
        border-bottom: 1px solid #ddd;
        text-align: left;
    }

    th {
        background-color: var(--dark-blue);
        color: white;
    }

    td a {
        color: red;
        text-decoration: none;
        font-weight: bold;
    }

    td a:hover {
        text-decoration: underline;
    }

    tbody tr:hover {
        background-color: #f1f1f1;
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
    <h1>Employee List</h1>

    <table>
        <thead>
            <tr>
                <th>Email</th>
                <th>Name</th>
                <th>Designation</th>
                <th>Department</th>
                <th>Contact</th>
                <th>Password</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Employee> getAllEmployee = (List<Employee>) request.getAttribute("getAllEmployee");
                if (getAllEmployee != null) {
                    for (Employee e : getAllEmployee) {
            %>
            <tr>
                <td><%=e.getEmailId()%></td>
                <td><%=e.getName()%></td>
                <td><%=e.getDesignation()%></td>
                <td><%=e.getDepartment()%></td>
                <td><%=e.getContact()%></td>
                <td><%=e.getPassword()%></td>
                <td><a href="delete?email=<%=e.getEmailId()%>">Delete</a></td>
            </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>
</div>

</body>
</html>
