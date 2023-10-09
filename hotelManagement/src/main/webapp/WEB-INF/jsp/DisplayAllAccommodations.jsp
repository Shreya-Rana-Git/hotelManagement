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

<!-- to find the single accommodation  -->


<div class="container">
<br/><br/>
<!-- form to find accommodation -->
<form method="post" action="/accommodation-find">
Find the Accommodation by id:<input type="text" name="accommodationid" required="required"/>&nbsp;
<!-- button to find -->
<button type="submit" class="btn btn-primary">Find</button>
</form></div>
<br/><br/>




<!-- displaying all the accommodations -->

<div align="center" class="container">
<!-- heading -->
<h1 style="text-align:center;"><u>Accommodation List</u></h1>



<!-- table to display accommodation list -->
	<table border="" style="border-spacing: 0px;" class="table table-hover">
	<!-- table head -->
		<tr class="table-primary">
			<th>Accommodation Id</th>
			<th>Accommodation Type</th>
			<th>Fare Per Day</th>
		</tr>
		<c:forEach  items="${accommodationlist}" var="accommodation">
		
		<!-- table body -->
		<tr>
			<td>${accommodation.accommodationId}</td>
			<td>${accommodation.accommodationType}</td>
			<td>${accommodation.farePerDay}</td>
		</tr>
		</c:forEach>
	</table>
	<br/>
	
	<!-- link to add another record -->
	<a href="/accommodation-add" class="btn btn-success">Add</a>&nbsp;
	
	<!-- link to return -->
	<a href="/index" class="btn" style="background-color: Tan;color: white;">Return</a>
</div>

</body>
</html>
