<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<h1 style="text-align:center;"><u>Hotel Addition</u></h1>

<!-- inner div -->
<div class="container" >

<!-- form to input hotel data -->
<form:form action="/hotel-save"  method="post"  modelAttribute="hotelrecords">
<table cellpadding="15px" >
			
			<!-- row for Hotel Id -->
			<tr>
			<td>
			
			Hotel Id :
			</td>
			<td><form:input type="text" class="form-control" path="hotelId" readonly="readOnly"/>
			</td>
		</tr>
		
		<!-- row for Hotel Place -->
		<tr>
		<td>
			Hotel Place:</td>
			<td><form:input type="text" class="form-control" path="hotelName" required="required"/>
			</td>
		</tr>
		
		<!-- row for submit button -->
		<tr>
		<td>
			
	
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