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
	<table border="" style="border-spacing: 0px;" cellpadding="20px">
		<tr>
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
			<td>${client.payStatus}</td>
		</tr>
	</table>
	</h4>
	<br/>
	<form action="/bill" method="post">
	<input type="hidden" path="clientNumber" value="${client.clientNumber}" name="clno"/><button type="submit">Create Bill</button>
	</form>
	<a href ="/client-update">Update</a>
	<a href="/client-index">Return</a>
</div>
</body>
</html>