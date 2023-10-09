<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

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
<title>Insert title here</title>
</head>
<body>
<!-- Outer div -->
<div class="container" style="padding:100px;" align="center">

<!-- Heading -->
<h1 style="text-align:center;"><u>Client Addition</u></h1>

<!-- inner div -->
<div class="container" >

<!-- form to input client data -->
<form:form action="/client-save"  method="post"  modelAttribute="clientDetails">
<table cellpadding="15px" >
			
			<!-- row for client number -->
			<tr>
			<td>
			
			Client Number :
			</td>
			<td><form:input type="text" class="form-control" path="clientNumber" readonly="readonly"/>
			</td>
		</tr>
		
		<!-- row for Client Name -->
		<tr>
		<td>
			Client Name :
			</td>
			<td><form:input type="text" class="form-control" path="clientName" required="required"/>
			</td>
		</tr>
		
		<!-- row for Address -->
		<tr>
		<td>
			Address:
			</td>
			<td><form:input type="text" class="form-control" path="clientAddress" required="required"/>
			</td>
		</tr>
		
		<!-- row for Gender -->
		<tr>
		<td>
			Contact Number :
			</td>
			<td><form:input type="tel" class="form-control" path="contactNo" required="required"/>
			</td>
		</tr>
		
		<!-- row for Gender -->
		<tr>
		<td>
			gender:
			</td>
			<td><form:input type="text" class="form-control" path="gender" list="genderList" required="required"/>
			<datalist id="genderList">
			<option value="Male">Male</option>
			<option value="Female">Female</option>
			</datalist>
			</td>
		</tr>
		
		<!-- row for Hotel -->
		<tr>
		<td>
			
			Hotel Id:
			</td>
			<td><form:input type="text" class="form-control" path="hotelId" list="hotelList" required="required"/>
			<datalist id="hotelList">
			 <c:forEach var="hotel" items="${hotelList}">
			<option value="${hotel.hotelId}">${hotel.hotelName}</option>
			</c:forEach>
			</datalist>
			</td>
		</tr>
		
		<!-- row for Checkin Date -->
		<tr>
		<td>
			Check In Date:
			</td>
			<td><form:input type="date" class="form-control" path="checkinDate" required="required"/>
			</td>
		</tr>
		
		<!-- row for Checkout Date -->
		<tr>
		<td>
			Check Out Date:
			</td>
			<td><form:input type="date" class="form-control" path="checkoutDate" required="required"/>
			</td>
		</tr>
		
		<!-- row for Accommodation type -->
		<tr>
		<td>
			Accommodation Type:
			</td>
			<td><form:input type="text" class="form-control" path="accommodationId" list="accommodationList" required="required"/>
			<datalist id="accommodationList">
			<option value=""></option>
             <c:forEach var="accommodation" items="${accommodationList}">
			<option value="${accommodation.accommodationId}">${accommodation.accommodationType}</option>
			</c:forEach>
			</datalist>
			</td>
		</tr>
		
		<!-- row for Pay Status -->
		<tr>
		<td>
			Pay Status:
			</td>
			<td><form:input type="text" path="payStatus" class="form-control" list="payStatusList" required="required"/>
			<datalist id="payStatusList">
			<option value="paid">paid</option>
			<option value="pending">pending</option>
			</datalist>
			</td>
		</tr>
		
		
		<tr>
		<td>
			
		<!--  submit button -->
		<button type="submit" class="btn btn-success">Submit</button>&nbsp;
		<!-- link to return -->
		<a href="/index" class="btn" style="background-color: Tan;color: white;">Return</a>
	
		</td>
		</tr>
		</table>	
</form:form>
</div>

</body>
</html>