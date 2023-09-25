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
<form:form action="/accommodation-save"  method="post"  modelAttribute="accommodationRecord">
<h2>
			
			Accommodation Id :<form:input type="text" path="accommodationId" required="required"/>
			<br/><br/>
			Accommodation Type:<form:input type="text" path="accommodationType" required="required"/>
			<br/><br/>
			Fare Per Day:<form:input type="text" path="farePerDay" required="required"/>
			<br/><br/>
			
		</h2>
		<button type="submit">Submit</button>
</form:form>
</div>


</body>
</html>