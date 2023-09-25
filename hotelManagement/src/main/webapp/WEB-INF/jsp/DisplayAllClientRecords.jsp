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
<div>
<!-- to find the single accommodation  -->

<form method="post" action="/client-find">
Find the client by id:<input type="text" name="clientid" required="required"/><button type="submit">Find</button>
</form></div>
<br/><br/>

<!-- displaying all the clients -->

<div align="center">
<h1>All Client Records</h1>
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
		<c:forEach  items="${clientlist}" var="client">
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
		</c:forEach>
	</table>
	<br/>
	<a href="/client-addition">Add</a>&nbsp;
	<a href="/client-index">Return</a>
</div>


</body>
</html>