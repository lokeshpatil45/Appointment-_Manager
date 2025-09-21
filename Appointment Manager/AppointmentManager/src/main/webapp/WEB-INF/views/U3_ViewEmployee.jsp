<%@page import="com.r3sys.appointment.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Employees</title>
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
            margin: 0;
            padding: 20px;
            background-color: var(--white);
        }

        .container {
            max-width: 95%;
            margin: auto;
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table th, table td {
            border: 1px solid var(--border);
            padding: 10px;
            text-align: center;
            font-size: 14px;
        }

        table th {
            background-color: var(--dark-blue);
            color: var(--white);
        }

        table tr:nth-child(even) {
            background-color: var(--light-gray);
        }

        table tr:hover {
            background-color: var(--hover);
        }

        h2 {
            color: var(--dark-blue);
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Employee List</h2>
        <table>
            <tr>
                <th>Email ID</th>
                <th>Name</th>
                <th>Designation</th>
                <th>Department</th>
                <th>Contact</th>
                <th>Password</th>
            </tr>

            <%
                List<Employee> getAllEmployee = (List<Employee>) request.getAttribute("getAllEmployee");
                if (getAllEmployee != null) {
                    for (Employee e : getAllEmployee) {
            %>
            <tr>
                <td><%= e.getEmailId() %></td>
                <td><%= e.getName() %></td>
                <td><%= e.getDesignation() %></td>
                <td><%= e.getDepartment() %></td>
                <td><%= e.getContact() %></td>
                <td><%= e.getPassword() %></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </div>

</body>
</html>
