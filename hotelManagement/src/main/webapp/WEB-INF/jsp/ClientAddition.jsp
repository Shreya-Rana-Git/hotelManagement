<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<form:form action="/client-save"  method="post"  modelAttribute="clientDetails">
<h2>
			
			Client Number :<form:input type="text" path="clientNumber" readonly="readonly"/>
			<br/><br/>
			Client Name :<form:input type="text" path="clientName" required="required"/>
			<br/><br/>
			Address:<form:input type="text" path="clientAddress" required="required"/>
			<br/><br/>
			Contact Number :<form:input type="tel" path="contactNo" required="required"/>
			<br/><br/>
			gender:  <form:input type="text" path="gender" list="genderList" required="required"/>
			<datalist id="genderList">
			<option value="Male">Male</option>
			<option value="Female">Female</option>
			</datalist>
			<br/><br/>
			
			Hotel Id:<form:input type="text" path="hotelId" list="hotelList" required="required"/>
			<datalist id="hotelList">
			 <c:forEach var="hotel" items="${hotelList}">
			<option value="${hotel.hotelId}">${hotel.hotelName}</option>
			</c:forEach>
			</datalist>
			<br/><br/>
			Check In Date:<form:input type="date" path="checkinDate" required="required"/>
			<br/><br/>
			Check Out Date:<form:input type="date" path="checkoutDate" required="required"/>
			<br/><br/>
			Accommodation Type:<form:input type="text" path="accommodationId" list="accommodationList" required="required"/>
			<datalist id="accommodationList">
             <c:forEach var="accommodation" items="${accommodationList}">
			<option value="${accommodation.accommodationId}">${accommodation.accommodationType}</option>
			</c:forEach>
			</datalist>
			<br/><br/>
			Pay Status:<form:input type="text" path="payStatus" list="payStatusList" required="required"/>
			<datalist id="payStatusList">
			<option value="paid">paid</option>
			<option value="pending">pending</option>
			</datalist>
			<br/><br/>
			
		</h2>
		<button type="submit">Submit</button>
</form:form>
</div>

</body>
</html>