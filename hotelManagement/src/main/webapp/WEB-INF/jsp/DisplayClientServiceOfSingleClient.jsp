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
<h1>All  Service Records of a Single Client </h1>
<h4>
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
	</h4>
	<br/>
	<form action="/bill" method="post">
	<input type="hidden" path="clientNumber" value="${clientid}" name="clno"/><button type="submit">Create Bill</button>
	</form>
	<a href="/client-index">Return</a>
</div>
</body>
</html>