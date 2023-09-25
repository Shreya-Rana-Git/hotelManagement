<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
u{
text-decoration-style: dotted;
}
table, th {
  border: 1px solid black;
 /* border-collapse: collapse;*/
}

td{
border: 1px solid white;
}
table td {
    border-left: 1px solid #000;
    border-right: 1px solid #000;
}

table td:first-child {
    border-left: none;
}

table td:last-child {
    border-right: none;
}
</style>
</head>
<body>
<div align="center">
	<h1>Bill</h1>
</div>
<div align="center">
	<h2>Hotel ${hotel.hotelName}</h2>
	<div>
	Contact details:1126463555/114866644/656556755
	</div>
	<br/><br/>
	<div>
	
	Client Name:<u>${client.clientName}</u> <br/><br/>
	ContactNo:<u>${client.contactNo}</u> <br/><br/>
	</div>
	<div>
	<table  style="border-spacing: 0px;" cellpadding="20px">
	<tr>
	<th>Services</th>
	<th>Amount</th>
	</tr>
	<tr>
	<td>${accommodation.accommodationType}</td>
	<td>${accommodation.farePerDay}</td>
	</tr>
	
	<c:forEach  items="${clientServiceList}" var="clientservice">
	<tr>
	<td>${clientservice.serviceType}</td>
	<td>${clientservice.amount}</td>
	</tr>
	</c:forEach>
	
	</table><br/>
	Total : <u>${total}</u>
	</div>
	
</div>

</body>
</html>