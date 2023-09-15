<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<form:form action="/hotel-save"  method="post"  modelAttribute="hotelrecords">
<h2>
			
			Hotel Id :<form:input type="text" path="hotelId" readonly="readOnly"/>
			<br/><br/>
			Hotel Place:<form:input type="text" path="hotelName" required="required"/>
			<br/><br/>
			
		</h2>
		<button type="submit">Submit</button>
</form:form>
</div>
</body>
</html>