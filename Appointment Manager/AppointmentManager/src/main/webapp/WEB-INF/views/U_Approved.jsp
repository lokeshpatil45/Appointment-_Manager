<%@page import="com.r3sys.appointment.BookAppointment"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table>
		<tr>
			<td>name</td>
			<td>designation</td>
			<td>department</td>
			<td>companyName</td>
			<td>contact</td>
			<td>address</td>
			<td>purpose</td>
			<td>description,,</td>
			<td>date</td>
			<td>time</td>
			<td>uEmail</td>
			<td>eEmail</td>
			<td>status</td>
			
			
		</tr>
	</table>
	<%
	List<BookAppointment> message = (List<BookAppointment>) request.getAttribute("message");
	

		for (BookAppointment b : message ) {
	%>
	<table>
		<tr>

			<td><%=b.getName()%></td>
			<td><%= b.getDesignation()%></td>
			<td><%=b.getDepartment() %></td>
			<td><%=b.getCompanyName()%></td>
			<td><%=b.getContact() %></td>
			<td><%=b.getAddress() %></td>
			<td><%=b.getPurpose()%></td>
			<td><%=b.getDescription()%></td>
			<td><%=b.getDate() %></td>
			<td><%=b.getTime() %></td>
			<td><%=b.getuEmail() %></td>
			<td><%=b.geteEmail() %></td>
			<td><%=b.getStatus() %></td>
		</tr>
	</table>

	<%
		}
	%>

</body>
</html>

