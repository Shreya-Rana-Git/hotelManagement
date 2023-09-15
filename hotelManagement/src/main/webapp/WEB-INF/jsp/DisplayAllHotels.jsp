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
<div align="center">
	<table>
		<tr>
			<th>Hotel Id</th>
			<th>Hotel Name</th>
		</tr>
		<c:forEach  items="${hotellist}" var="hotel">
		<tr>
			<td>${hotel.hotelId}</td>
			<td>${hotel.hotelName}</td>
		</tr>
		</c:forEach>
	</table>
	<br/>

	<a href="/">Return</a>
</div>


</body>
</html>