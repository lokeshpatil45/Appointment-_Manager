<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Book Appointment</title>
    <style>
        :root {
            --dark-blue: #0a192f;
            --accent: #00b4d8;
            --white: #ffffff;
            --light-gray: #f9f9f9;
            --hover: #e3f2fd;
            --border: #cccccc;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--white);
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

        input[type="text"],
        input[type="date"],
        input[type="time"] {
            padding: 10px;
            border: 1px solid var(--border);
            border-radius: 5px;
            font-size: 14px;
        }

        input[type="text"]:focus,
        input[type="date"]:focus,
        input[type="time"]:focus {
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
    </style>
</head>
<body>

    <form action="registerVisitor" method="post">
        <input type="text" name="eEmail" placeholder="Enter email">
        <input type="text" name="purpose" placeholder="Purpose">
        <input type="text" name="description" placeholder="Description">
        <input type="date" name="date">
        <input type="time" name="time">
        <input type="text" name="status" value="pending">
        <input type="submit" value="Register">
    </form>

</body>
</html>
