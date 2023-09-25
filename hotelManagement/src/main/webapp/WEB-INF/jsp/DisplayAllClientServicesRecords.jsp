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

<form method="post" action="/client-service-find">
Find the client service by clientid:<input type="text" name="clientid" required="required"/><button type="submit">Find</button>
</form></div>
<br/><br/>

<!-- displaying all the clients -->

<div align="center">
<h1>All Client Service Records</h1>
	<table border="" style="border-spacing: 0px;" cellpadding="20px">
		<tr>
			<th>serialNumber</th>
			<th>clientNumber</th>
			<th>serviceType</th>
			<th>date</th>
			<th>amount</th>
		</tr>
		<c:forEach  items="${clientservicelist}" var="clientservice">
		<tr>
			<td>${clientservice.serialNumber}</td>
			<td>${clientservice.clientNumber}</td>
			<td>${clientservice.serviceType}</td>
			<td>${clientservice.date}</td>
			<td>${clientservice.amount}</td>
		</tr>
		</c:forEach>
	</table>
	<br/>
	<a href="/client-service-addition">Add</a>&nbsp;
	<a href="/client-index">Return</a>
</div>

</body>
</html>