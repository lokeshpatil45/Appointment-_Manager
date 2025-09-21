<%@page import="com.r3sys.appointment.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
<style>
    :root {
        --dark-blue: #0a192f;
        --accent: #00b4d8;
        --white: #ffffff;
        --light-gray: #f1f1f1;
        --hover: #e3f2fd;
        --border: #cccccc;
    }

    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: var(--dark-blue);
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        animation: fadeIn 1s ease-in;
    }

    @keyframes fadeIn {
        0% { opacity: 0; transform: translateY(-20px); }
        100% { opacity: 1; transform: translateY(0); }
    }

    form {
        background-color: var(--white);
        padding: 30px;
        border: 1px solid var(--border);
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        width: 350px;
        display: flex;
        flex-direction: column;
        gap: 15px;
        animation: fadeIn 1s ease-in;
    }

    input[type="text"] {
        padding: 10px;
        border: 1px solid var(--border);
        border-radius: 5px;
        font-size: 14px;
    }

    input[type="text"]:focus {
        border-color: var(--accent);
        outline: none;
    }

    input[type="submit"] {
        background-color: var(--dark-blue);
        color: var(--white);
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 14px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: var(--accent);
    }

    .user-details {
        margin-top: 30px;
        background-color: var(--white);
        padding: 20px;
        border-radius: 10px;
        width: 500px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
        color: var(--dark-blue);
        animation: fadeIn 1s ease-in;
    }

    .user-details h3 {
        margin: 10px 0;
        font-size: 16px;
    }
</style>
</head>
<body>

<div>
    <form action="userloginPage" method="Post">
        <input type="text" name="uemail" placeholder="Enter Email">
        <input type="text" name="upassword" placeholder="Enter Password">
        <input type="submit">
    </form>

    <%
        User user = (User) request.getAttribute("user");
        if (user != null) {
    %>
    <div class="user-details">
        <h3>Employee Email: <%= user.getUemail() %></h3>
        <h3>Employee Name: <%= user.getUname() %></h3>
        <h3>Designation: <%= user.getUdesignation() %></h3>
        <h3>Department: <%= user.getUdepartment() %></h3>
        <h3>Company Name: <%= user.getUcompanyName() %></h3>
        <h3>Contact: <%= user.getUcontact() %></h3>
        <h3>Address: <%= user.getUaddress() %></h3>
        <h3>Password: <%= user.getUpassword() %></h3>
    </div>
    <%
        }
    %>
</div>

</body>
</html>
