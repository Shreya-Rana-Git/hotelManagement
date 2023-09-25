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
<form:form action="/client-service-save"  method="post"  modelAttribute="clientserviceDetails">
<h2>
			
			serial Number :<form:input type="text" path="serialNumber" readonly="readonly"/>
			<br/><br/>
			client Number :<form:input type="text" path="clientNumber" required="required"/>
			<br/><br/>
			serviceType:<form:input type="text" path="serviceType" required="required"/>
			<br/><br/>
			date :<form:input type="tel" path="date" required="required"/>
			<br/><br/>
			amount :<form:input type="text" path="amount" required="required" />
			<br/><br/>
			
		</h2>
		<button type="submit">Submit</button>
</form:form>
</div>

</body>
</html>