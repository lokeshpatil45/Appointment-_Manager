<%@page import="com.r3sys.appointment.BookAppointment"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Disapproved Appointments</title>
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
            background-color: var(--white);
            padding: 40px;
            margin: 0;
        }

        .container {
            overflow-x: auto;
        }

        table.appointment-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        table.appointment-table th,
        table.appointment-table td {
            border: 1px solid var(--border);
            padding: 10px;
            text-align: center;
            font-size: 14px;
        }

        table.appointment-table th {
            background-color: var(--dark-blue);
            color: var(--white);
        }

        table.appointment-table tr:nth-child(even) {
            background-color: var(--light-gray);
        }

        table.appointment-table tr:hover {
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
                List<BookAppointment> disapproved = (List<BookAppointment>) request.getAttribute("disapproved");
            if(disapproved!=null)
	          {
	          for( BookAppointment b : disapproved)
	         {
	             String status = b.getStatus();
	             if ("disapproved".equalsIgnoreCase(status))
	             {
	        	 

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
