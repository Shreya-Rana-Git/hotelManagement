<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Bootstrap cdn -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  
  
<title>Insert title here</title>
</head>
<!--  <body b
	style="background-image: url('photo-1542314831-068cd1dbfeeb.jpg');
	background-repeat: no-repeat;"
>
-->
<body background="https://images.alphacoders.com/498/498263.jpg">
<header>
<!-- Heading -->
<h1 style="color:white; text-align: center;">Hotel Reservation System</h1><br/><br/>

<nav class="navbar navbar-expand-sm bg-primary justify-content-center">
  <ul class="navbar-nav">
  
  <!-- hotel menu -->
    <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" style="color:white;">
    Hotel
  </a>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="/hotel-add">Hotel Addition</a></li>
    <li><a class="dropdown-item" href="/hotel-view">All Hotel Records</a></li>
    <li><a class="dropdown-item" href="/accommodation-add">Accommodation Addition</a></li>
  	 <li><a class="dropdown-item" href="/accommodation-view">All Accommodation Records</a></li>
  </ul>

    </li>
    
    <!-- client menu -->
    <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle"  data-bs-toggle="dropdown" style="color:white;">
    Client
  </a>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="/client-addition">Client Addition</a></li>
    <li><a class="dropdown-item" href="/client-view">All Clients </a></li>
    <li><a class="dropdown-item" href="/client-service-addition">Clients Service Addition </a></li>
  	 <li><a class="dropdown-item" href="/client-service-view">Display All Clients Service  </a></li>
  </ul>

    </li>
    </ul>
</nav>
</header>




</body>
</html>