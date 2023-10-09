<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap cdn -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<body>
<div align="center" class="container">
<!-- heading -->
<h1><u>Single Hotel List</u></h1>

<!-- table to display single client record -->

	<table border="" style="border-spacing: 0px;" class="table table-hover">
	
	<!-- table head -->
		<tr class="table-primary">
			<th>hotelId</th>
			<th>hotelName</th>
		</tr>
		
		<!-- table body -->
		<tr>
			<td>${HotelDetails.hotelId}</td>
			<td>${HotelDetails.hotelName}</td>
		</tr>
	</table>
	<br/>
	<!-- link to return -->
	<a href="/index" class="btn" style="background-color: Tan;color: white;">Return</a>
</div>


</body>
</html>