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
<form:form action="/client-save"  method="post"  modelAttribute="clientDetails">
<h2>
			
	<form:input type="hidden" path="clientNumber"  />
	<form:input type="hidden" path="clientName" />
	<form:input type="hidden" path="clientAddress"  />
	<form:input type="hidden" path="contactNo" />
	<form:input type="hidden" path="gender"  />
	<form:input type="hidden" path="hotelId" />
	<form:input type="hidden" path="checkinDate"  />
	<form:input type="hidden" path="checkoutDate" />
	<form:input type="hidden" path="accommodationId" />
			
			Client Number :<form:input type="text" path="clientNumber" disabled="true" required="required"/>
			<br/><br/>
			Client Name :<form:input type="text" path="clientName" disabled="true" required="required"/>
			<br/><br/>
			Address:<form:input type="text" path="clientAddress" disabled="true" required="required"/>
			<br/><br/>
			Contact Number :<form:input type="tel" path="contactNo"  disabled="true" required="required"/>
			<br/><br/>
			gender:  <form:input type="text" path="gender" list="genderList" disabled="true" required="required"/>
			<datalist id="genderList">
			<option value="Male">Male</option>
			<option value="Female">Female</option>
			</datalist>
			<br/><br/>
			Hotel Id:<form:input type="text" path="hotelId" list="hotelList" disabled="true"  required="required"/>
			<datalist id="hotelList">
			<option value="H1">H1</option>
			<option value="H2">H2</option>
			<option value="H3">H3</option>
			<option value="H4">H4</option>
			<option value="H5">H5</option>
			</datalist>
			<br/><br/>
			Check In Date:<form:input type="date" path="checkinDate" disabled="true" required="required"/>
			<br/><br/>
			Check Out Date:<form:input type="date" path="checkoutDate" disabled="true" required="required"/>
			<br/><br/>
			Accommodation Type:<form:input type="text" path="accommodationId"  disabled="true" list="accommodationList" required="required"/>
			<datalist id="accommodationList">
			<option value="SB">Single Bedded</option>
			<option value="DB">Double Bedded</option>
			</datalist>
			<br/><br/>
			Pay Status:<form:input type="text" path="payStatus" list="payStatusList" readonly="readonly" required="required"/>
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