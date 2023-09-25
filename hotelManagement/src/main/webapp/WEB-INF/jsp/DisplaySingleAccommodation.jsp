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
			<th>accommodationId</th>
			<th>accommodationType</th>
			<th>farePerDay</th>
		</tr>
		<tr>
			<td>${accommodation.accommodationId}</td>
			<td>${accommodation.accommodationType}</td>
			<td>${accommodation.farePerDay}</td>
		</tr>
	</table>
	</h4>
	<br/>
	<a href ="/accommodation-update">Update</a>
	<a href="/">Return</a>
</div>

</body>
</html>