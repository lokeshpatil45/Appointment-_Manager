<%@page import="com.r3sys.appointment.BookAppointment"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Appointment View</title>
    <style>
        :root {
            --dark-blue: #0a192f;
            --accent: #00b4d8;
            --white: #ffffff;
            --light-gray: #f1f1f1;
            --hover: #e3f2fd;
            --border: #cccccc;
            --approve: #28a745;
            --disapprove: #dc3545;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--white);
            padding: 40px;
        }

        .container {
            overflow-x: auto;
        }

        h2 {
            color: var(--dark-blue);
            text-align: center;
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

        .action-link {
            text-decoration: none;
            padding: 6px 12px;
            border-radius: 4px;
            color: white;
            font-weight: bold;
        }

        .approved-link {
            background-color: var(--approve);
        }

        .approved-link:hover {
            background-color: #218838;
        }

        .disapproved-link {
            background-color: var(--disapprove);
        }

        .disapproved-link:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Appointment List</h2>
        <table>
            <tr>
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
                <th>Approve</th>
                <th>Disapprove</th>
            </tr>

            <%
                List<BookAppointment> appointment = (List<BookAppointment>) request.getAttribute("appointment");
                if (appointment != null) {
                    for (BookAppointment b : appointment ) {
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
                <td><a href="approved?bid=<%=b.getBid()%>" class="action-link approved-link">Approve</a></td>
                <td><a href="disapproved?bid=<%=b.getBid()%>" class="action-link disapproved-link">Disapprove</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </div>
</body>
</html>
