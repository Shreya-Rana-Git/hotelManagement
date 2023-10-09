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
<br/><br/>
<!-- heading -->
<h1><u>All  Service Records of a Single Client</u> </h1>

<!-- table to display Service Records of a Single Client -->
	<table border="" style="border-spacing: 0px;" cellpadding="20px" class="table table-hover">
		<!-- table head -->
		<tr class="table-primary">
			<th>serialNumber</th>
			<th>clientNumber</th>
			<th>serviceType</th>
			<th>date</th>
			<th>amount</th>
		</tr>
		<!-- table body -->
		<c:forEach  items="${clientservicelist}" var="clientservice">
		<tr>
			<td>${clientservice.serialNumber}</td>
			<td>${clientservice.clientNumber}</td>
			<td>${clientservice.serviceType}</td>
			<td>${clientservice.date}</td>
			<td>${clientservice.amount}</td>
		</tr>
		</c:forEach>
	</table>
	<br/>
	<form action="/bill" method="post">
	<input type="hidden" path="clientNumber" value="${clientid}" name="clno"/> &nbsp;
	<!-- submit button -->
	<button type="submit" class="btn btn-success" >Create Bill</button>
	<!-- link to return -->
	<a href="/index" class="btn" style="background-color: Tan;color: white;">Return</a>
	</form>
	
</div>
</body>
</html>