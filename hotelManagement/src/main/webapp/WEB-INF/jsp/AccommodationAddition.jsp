<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<h1 style="text-align:center;"><u>Accommodation Addition</u></h1>

<!-- inner div -->
<div class="container" >

<!-- form to input accommodation data -->
<form:form action="/accommodation-save"  method="post"  modelAttribute="accommodationRecord">

			<table cellpadding="15px" >
			
			<!-- row for accommodation id -->
			<tr>
			<td>
			Accommodation Id :
			</td>
			<td><form:input class="form-control" type="text" path="accommodationId" required="required"/>
			</td>
			</tr>
			
			<!-- row for accommodation type -->
			<tr>
			<td>
			Accommodation Type:
			</td>
			<td><form:input class="form-control" type="text" path="accommodationType" required="required"/>
			</td>
			</tr>
			
			<!-- row for fare per day -->
			<tr>
			<td>
			Fare Per Day:
			</td>
			<td><form:input class="form-control" type="text" path="farePerDay" required="required"/>
		</td>
		</tr>
		
		
		<tr>
		<td>
		<!--  submit button -->
		<button type="submit" class="btn btn-success">Submit</button> &nbsp;
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