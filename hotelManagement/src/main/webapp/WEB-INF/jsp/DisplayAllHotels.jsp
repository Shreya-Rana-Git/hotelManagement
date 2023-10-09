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

<!-- form to search record regarding the value -->
<form method="post" action="/hotel-find">
Find the hotel by id:<input type="text" name="hotelid" required="required"/>

<!-- submit button -->
&nbsp;<button type="submit" class="btn btn-primary">Find</button>
</form></div>









<div align="center" class="container">
<!-- heading -->
<h1><u>All Hotel Records</u></h1>

<!-- table to display hotel list -->
	<table border="" style="border-spacing: 0px;" class="table table-hover">
	<!-- table head -->
		<tr class="table-primary">
			<th>Hotel Id</th>
			<th>Hotel Name</th>
		</tr>
		<!-- Table body -->
		<c:forEach  items="${hotellist}" var="hotel">
		<tr>
			<td>${hotel.hotelId}</td>
			<td>${hotel.hotelName}</td>
		</tr>
		</c:forEach>
	</table>
	<br/>
	<!-- link to add another record -->
	<a href="/hotel-add" class="btn btn-success">Add</a>&nbsp;
	<!-- link to return -->
	<a href="/index" class="btn" style="background-color: Tan;color: white;">Return</a>
</div>


</body>
</html>