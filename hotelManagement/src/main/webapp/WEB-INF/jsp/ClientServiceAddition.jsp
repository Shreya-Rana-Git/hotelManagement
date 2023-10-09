<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap cdn -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


<!-- Adding css style -->
<style>
@import url('https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&display=swap');
/* editing font for td elements*/ 
td{
font-size: 20px;

}
/* editing the font style of h1 tag element*/
h1{
font-family: 'Libre Baskerville', serif;
}

</style>

</head>
<body>
<!-- Outer div -->
<div class="container" style="padding:100px;" align="center">

<!-- Heading -->
<h1 style="text-align:center;"><u>Client Service Addition</u></h1>

<!-- inner div -->
<div class="container" >

<!-- form to input hotel data -->

<form:form action="/client-service-save"  method="post"  modelAttribute="clientserviceDetails">
<table cellpadding="15px" >
			
			<!-- row for serial number -->
			<tr>
			<td>
			
			serial Number :
			</td>
			<td><form:input type="text" path="serialNumber" class="form-control" readonly="readonly"/>
			</td>
		</tr>
		
		<!-- row for client number -->
		<tr>
		<td>
			client Number :
			</td>
			<td><form:input type="text" path="clientNumber" class="form-control" list="clientList" required="required"/>
			
			<datalist id="clientList">
			<option value=""></option>
             <c:forEach var="client" items="${clientList}">
			<option value="${client.clientNumber}">${client.clientName}</option>
			</c:forEach>
			</datalist>
			</td>
		</tr>
		
			
		<!-- row for service type -->
		<tr>
		<td>
			serviceType:
			</td>
			<td><form:input type="text" path="serviceType" class="form-control" required="required"/>
			</td>
		</tr>
		<!-- row for date -->
		<tr>
		<td>
			date :
			</td>
			<td><form:input type="date" path="date" class="form-control" required="required"/>
			</td>
		</tr>
		<!-- row for amount -->
		<tr>
		<td>
			amount :
			</td>
			<td><form:input type="text" path="amount" class="form-control" required="required" />
			</td>
		</tr>
			
		
		
		<tr>
		<td>
			
		<!-- submit button -->
		<button type="submit" class="btn btn-success" style="fl">Submit</button>&nbsp;
		<!-- link to return -->
		<a href="/index" class="btn" style="background-color: Tan;color: white;">Return</a>
	
		</td>
		</tr>
		</table>	
		
</form:form>
</div>
</div>
</body>
</html>
			