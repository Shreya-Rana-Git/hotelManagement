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
<style type="text/css">
u{
text-decoration-style: dotted;
}
/*
table, th {
  border: 1px solid black;
 border-collapse: collapse;
}

td{
border: 1px solid white;
}
table td {
    border-left: 1px solid #000;
    border-right: 1px solid #000;
}

table td:first-child {
    border-left: none;
}

table td:last-child {
    border-right: none;
}*/
div{
font-size: 20px;
}
</style>
</head>
<body>
<!-- Bill Page -->
<div align="center" class="container">
<!-- heading -->
	<h1>Bill</h1>
</div>
<div align="center" >
	<h2>Hotel ${hotel.hotelName}</h2>
	<br/><br/>
	<div>
	<!-- client details -->
	Client Name:<u>${client.clientName}</u> <br/><br/>
	ContactNo:<u>${client.contactNo}</u> <br/><br/>
	</div>
	
	
	<div style="margin-left: 500px;
	margin-right: 500px;">
	<!-- table containing amount details -->
	<table  style="border-spacing: 0px;" cellpadding="20px" class="table">
	<!-- table head -->
	<tr class="table-primary">
	<th>Services</th>
	<th>Amount</th>
	</tr>

	<!-- table body -->
	<tr>
	<td>Accommodation: ${accommodation.accommodationType}</td>
	<td>${accommodation.farePerDay}</td>
	</tr>
	
	<c:forEach  items="${clientServiceList}" var="clientservice">
	<tr>
	<td>${clientservice.serviceType}</td>
	<td>${clientservice.amount}</td>
	</tr>
	</c:forEach>
	
	</table><br/>
	Total : <u>${total}</u>
	</div>
	<br/><br/>
	<!-- link to return -->
		<a href="/index" class="btn" style="background-color: Tan;color: white;">Return</a>
	
</div>

</body>
</html>