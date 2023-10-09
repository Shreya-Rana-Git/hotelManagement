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
<!-- Heading -->
<h1><u>Single Accommodation</u></h1>
<!-- table to display single accommodation -->
	<table border="" style="border-spacing: 0px;" class="table table-hover">
		<!-- table head -->
		<tr class="table-primary">
			<th>accommodationId</th>
			<th>accommodationType</th>
			<th>farePerDay</th>
		</tr>
		<tr>
		<!-- table body -->
			<td>${accommodation.accommodationId}</td>
			<td>${accommodation.accommodationType}</td>
			<td>${accommodation.farePerDay}</td>
		</tr>
	</table>
	<br/>
	<!-- button for update -->
	<a href ="/accommodation-update" class="btn btn-warning">Update</a>
	<!-- link to return -->
	<a href="/index" class="btn" style="background-color: Tan;color: white;">Return</a>
</div>

</body>
</html>