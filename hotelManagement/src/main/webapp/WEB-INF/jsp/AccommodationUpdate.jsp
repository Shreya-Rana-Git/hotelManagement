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
	<form:input type="hidden" path="accommodationId"  />
	<form:input type="hidden" path="accommodationType"  />
			
			Accommodation Id :<form:input type="text" path="accommodationId" disabled="true" />
			<br/><br/>
			Accommodation Type:<form:input type="text" path="accommodationType" disabled="true"/>
			<br/><br/>
			Fare Per Day:<form:input type="text" path="farePerDay" required="required"/>
			<br/><br/>
			
		</h2>
		<button type="submit">Submit</button>
</form:form>
</div>



</body>
</html>