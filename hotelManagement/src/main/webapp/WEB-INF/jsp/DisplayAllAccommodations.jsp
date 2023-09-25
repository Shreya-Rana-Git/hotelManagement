<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- to find the single accommodation  -->

<form method="post" action="/accommodation-find">
Find the Accommodation by id:<input type="text" name="accommodationid" required="required"/><button type="submit">Find</button>
</form></div>

<!-- displaying all the accommodations -->

<div align="center">
	<table border="" style="border-spacing: 0px;">
		<tr>
			<th>Accommodation Id</th>
			<th>Accommodation Type</th>
			<th>Fare Per Day</th>
		</tr>
		<c:forEach  items="${accommodationlist}" var="accommodation">
		<tr>
			<td>${accommodation.accommodationId}</td>
			<td>${accommodation.accommodationType}</td>
			<td>${accommodation.farePerDay}</td>
		</tr>
		</c:forEach>
	</table>
	<br/>
	<a href="/accommodation-add">Add</a>&nbsp;
	<a href="/">Return</a>
</div>



</body>
</html>