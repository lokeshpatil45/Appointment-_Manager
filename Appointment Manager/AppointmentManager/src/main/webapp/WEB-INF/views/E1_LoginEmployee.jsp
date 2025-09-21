<%@page import="com.r3sys.appointment.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Dashboard</title>
<style>
    :root {
        --dark-blue: #0a192f;
        --navy: #172a45;
        --accent: #00b4d8;
        --white: #ffffff;
    }

    body {
        margin: 0;
        padding: 0;
        background-color: var(--dark-blue);
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        flex-direction: column;
        color: var(--white);
    }

    .login-box {
        background: var(--navy);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0,0,0,0.2);
        width: 350px;
        text-align: center;
        margin-bottom: 30px;
    }

    .login-box h2 {
        color: var(--accent);
        margin-bottom: 20px;
    }

    .login-box input {
        width: 90%;
        padding: 10px;
        margin: 10px 0;
        border: none;
        border-radius: 5px;
        background-color: #fff;
        color: #000;
    }

    .login-box input[type="submit"] {
        background-color: var(--accent);
        color: #000;
        cursor: pointer;
        font-weight: bold;
        transition: background 0.3s ease;
    }

    .login-box input[type="submit"]:hover {
        background-color: #02a1c2;
    }

    .employee-details {
        background: var(--navy);
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0,0,0,0.2);
        width: 400px;
        text-align: left;
    }

    .employee-details h3 {
        margin: 10px 0;
        color: var(--white);
    }
</style>
</head>
<body>

<div class="login-box">
    <form action="openLogin" method="post">
        <h2>Employee Login</h2>
        <input type="text" name="email" placeholder="Enter Email" required /><br/>
        <input type="password" name="password" placeholder="Enter Password" required /><br/>
        <input type="submit" value="Login" />
    </form>
</div>

<%
    Employee employee = (Employee) request.getAttribute("employee");
    if (employee != null) {
%>
    <div class="employee-details">
        <h3>Email: <%= employee.getEmailId() %></h3>
        <h3>Name: <%= employee.getName() %></h3>
        <h3>Designation: <%= employee.getDesignation() %></h3>
        <h3>Department: <%= employee.getDepartment() %></h3>
        <h3>Contact: <%= employee.getContact() %></h3>
        <h3>Password: <%= employee.getPassword() %></h3>
    </div>
<%
    }
%>

</body>
</html>
