<%@page import="com.r3sys.appointment.BookAppointment"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Pending Appointments</title>
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
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 100%;
            overflow-x: auto;
        }

        .appointment-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .appointment-table th,
        .appointment-table td {
            border: 1px solid var(--border);
            padding: 10px;
            text-align: center;
            font-size: 14px;
        }

        .appointment-table th {
            background-color: var(--dark-blue);
            color: var(--white);
        }

        .appointment-table tr:nth-child(even) {
            background-color: var(--light-gray);
        }

        .appointment-table tr:hover {
            background-color: var(--hover);
        }

        .header-row {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <table border="1" class="appointment-table">
            <tr class="header-row">
                <th>Name</th>
                <th>Designation</th>
                <th>Department</th>
                <th>Company Name</th>
                <th>Contact</th>
                <th>Address</th>
                <th>Purpose</th>
                <th>Description</th>
                <th>Date</th>
                <th>Time</th>
                <th>User Email</th>
                <th>Employee Email</th>
                <th>Status</th>
            </tr>

            <%
                List<BookAppointment> pending = (List<BookAppointment>) request.getAttribute("pending");
                if(pending != null) {
                    for(BookAppointment b : pending) {
                        String status = b.getStatus();
                        if ("pending".equalsIgnoreCase(status)) {
            %>
            <tr>
                <td><%= b.getName() %></td>
                <td><%= b.getDesignation() %></td>
                <td><%= b.getDepartment() %></td>
                <td><%= b.getCompanyName() %></td>
                <td><%= b.getContact() %></td>
                <td><%= b.getAddress() %></td>
                <td><%= b.getPurpose() %></td>
                <td><%= b.getDescription() %></td>
                <td><%= b.getDate() %></td>
                <td><%= b.getTime() %></td>
                <td><%= b.getuEmail() %></td>
                <td><%= b.geteEmail() %></td>
                <td><%= b.getStatus() %></td>
            </tr>
            <%
                        }
                    }
                }
            %>
        </table>
    </div>
</body>
</html>
