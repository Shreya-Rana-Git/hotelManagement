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
<!-- to find the single Client  -->
<br/><br/>
<form method="post" action="/client-find">
Find the client by id:<input type="text" name="clientid" required="required"/>
<!-- button to find -->
&nbsp;<button type="submit" class="btn btn-primary">Find</button>
</form></div>
<br/><br/>



<!-- displaying all the clients -->

<div align="center" class="container">
<!-- Heading -->
<h1><u>All Client Records</u></h1>


<!-- table to display client records -->
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
		<c:forEach  items="${clientlist}" var="client">
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
			<td id="status">${client.payStatus}</td>
		</tr>
		</c:forEach>
	</table>
	<br/>
	<!-- link to add another record -->
	<a href="/client-addition" class="btn btn-success">Add</a>&nbsp;
	<!-- link to return -->
		<a href="/index" class="btn" style="background-color: Tan;color: white;">Return</a>
	</div>


</body>
</html>