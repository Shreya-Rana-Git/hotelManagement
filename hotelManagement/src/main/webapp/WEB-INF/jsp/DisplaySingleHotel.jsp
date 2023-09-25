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
<h4>
	<table border="" style="border-spacing: 0px;">
	
		<tr>
			<th>hotelId</th>
			<th>hotelName</th>
		</tr>
		<tr>
			<td>${HotelDetails.hotelId}</td>
			<td>${HotelDetails.hotelName}</td>
		</tr>
	</table>
	</h4>
	<br/>
	<a href="/">Return</a>
</div>


</body>
</html>