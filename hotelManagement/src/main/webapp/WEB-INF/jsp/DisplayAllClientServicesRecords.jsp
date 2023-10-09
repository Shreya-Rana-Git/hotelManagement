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


<div class="container">
<br/><br/>
<!-- to find the single client's services  -->

<form method="post" action="/client-service-find">
Find the client service by clientid:<input type="text" name="clientid" required="required"/>&nbsp;

<!-- submit button to find -->
<button type="submit" class="btn btn-primary">Find</button>
</form></div>
<br/><br/>






<!-- displaying all the clients -->

<div align="center" class="container">
<!-- heading -->
<h1><u>All Client Service Records</u></h1>

<!-- table to display client service list -->
	<table border="" style="border-spacing: 0px;" cellpadding="20px" class="table">
		<!-- table head -->
		<tr class="table-primary">
			<th>serialNumber</th>
			<th>clientNumber</th>
			<th>serviceType</th>
			<th>date</th>
			<th>amount</th>
		</tr>
		<c:forEach  items="${clientservicelist}" var="clientservice">
		<!-- table body -->
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
	<!-- link to add another record -->
	<a href="/client-service-addition" class="btn btn-success">Add</a>&nbsp;
	<!-- link to return -->
	<a href="/index" class="btn" style="background-color: Tan;color: white;">Return</a>
</div>

</body>
</html>