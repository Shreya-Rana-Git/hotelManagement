<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Bootstrap cdn -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<div align="center" class="container">
<!-- heading -->
<h1><u>Single Client List</u></h1>

<!-- table to display single client record -->
	<table border="" style="border-spacing: 0px;" cellpadding="20px" class="table table-hover">
		
		<!-- table head -->
		<tr class="table-primary">
			<th>client Number</th>
			<th>client Name</th>
			<th>client Address</th>
			<th>contactNo</th>
			<th>gender</th>
			<th>hotelId</th>
			<th>checkinDate</th>
			<th>checkoutDate</th>
			<th>accommodationId</th>
			<th>payStatus</th>
		</tr>
		
		<!-- table body -->
		<tr>
			<td>${client.clientNumber}</td>
			<td>${client.clientName}</td>
			<td>${client.clientAddress}</td>
			<td>${client.contactNo}</td>
			<td>${client.gender}</td>
			<td>${client.hotelId}</td>
			<td>${client.checkinDate}</td>
			<td>${client.checkoutDate}</td>
			<td>${client.accommodationId}</td>
			<td>${client.payStatus}</td>
		</tr>
	</table>
	<br/>
	<!-- form to create bill -->
	<form action="/bill" method="post">
	<input type="hidden" path="clientNumber" value="${client.clientNumber}" name="clno"/>
	
	<!-- link to update -->
	<a href ="/client-update" class="btn btn-success">Update</a>
		&nbsp;
	<!-- Submit button to create bill -->
	<button type="submit" class="btn btn-warning">Create Bill</button>

	&nbsp;
	<!-- link to return -->
	<a href="/index" class="btn" style="background-color: Tan;color: white;">Return</a>

	</form>
	
	
</div>
</body>
</html>