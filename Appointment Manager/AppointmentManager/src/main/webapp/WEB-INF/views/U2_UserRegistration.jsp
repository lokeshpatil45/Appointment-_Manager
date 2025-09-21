<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
        background-color: var(--dark-blue); /* Using consistent theme background */
        padding: 40px;
        display: flex;
        justify-content: center;
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

    a {
        text-align: center;
        color: var(--dark-blue);
        text-decoration: none;
        font-size: 14px;
    }

    a:hover {
        color: var(--accent);
        text-decoration: underline;
    }
</style>
</head>
<body>
<form action="userRegistration" method="Post">
    <input type="text" name="uemail" placeholder="Enter Email">
    <input type="text" name="uname" placeholder="Enter name">
    <input type="text" name="udesignation" placeholder="Enter Designation">
    <input type="text" name="udepartment" placeholder="Enter Department">
    <input type="text" name="ucompanyName" placeholder="Enter CompanyName">
    <input type="text" name="ucontact" placeholder="Enter Contact">
    <input type="text" name="upassword" placeholder="Enter Password">
    <input type="text" name="uaddress" placeholder="Enter Address">
    <input type="submit">
    <a href="U_UserLogin">Login</a>
</form>
</body>
</html>
