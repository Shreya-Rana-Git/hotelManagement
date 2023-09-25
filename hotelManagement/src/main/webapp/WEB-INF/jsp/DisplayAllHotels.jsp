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
<h3>
<div align="right">
<form method="post" action="/hotel-find">
Find the hotel by id:<input type="text" name="hotelid" required="required"/><button type="submit">Find</button>
</form></div>
<div align="center">
	<table border="" style="border-spacing: 0px;">
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
	<a href="/hotel-add">Add</a>&nbsp;
	<a href="/index">Return</a>
</div>

</h3>
</body>
</html>