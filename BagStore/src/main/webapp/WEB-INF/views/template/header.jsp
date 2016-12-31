<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Tangerine">
          
          	<style>
      body {
        font-family: 'Tangerine', monotype corsiva;
        font-size: 70px;
   background: url("<c:url value="/resources/images/cartt.jpg"/>") no-repeat;
   background-attachment: fixed;
   background-size: cover;
   background-position: 50% 50%;
   /* font-family: 'Open Sans', sans-serif; */
      }
    </style>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Travelers World</title>

<!-- Angular.JS -->
<script type="text/javascript" src="<c:url value="/resources/js/angular.min.js"/>"></script>
<!-- JQuery -->
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

<script	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>


<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- MaCarouselin CSS -->
<link href="<c:url value="/resources/css/carousel.css" />"
	rel="stylesheet">

<!-- Main CSS -->
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">


 <link
	href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
	rel="stylesheet"> 
	<!-- <script type="text/javascript">
	$(document).ready(function(){
		alert("joi");
	});
	</script> -->
</head>

<!-- NAVBAR
================================================== -->
<body>

	<div class="navbar-wrapper" >
		
			<nav class="navbar navbar-inverse navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Travelers World</a>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li><a href="<c:url value="/" />"><span
						class="glyphicon glyphicon-home"></span>Home</a></li>
							<li><a href="<c:url value="/product/getall" />">Products</a></li>
							
							<li><a href="<c:url value="/about" />">About Us</a></li>
							<sec:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="<c:url value="/admins" />">Admin</a></li>
							</sec:authorize>
						</ul>
						<ul class="nav navbar-nav pull-right">
							<c:if test="${pageContext.request.userPrincipal.name != null}">
								<li><a>Welcome:
										${pageContext.request.userPrincipal.name}</a></li>
								<li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>

								<c:if
									test="${pageContext.request.userPrincipal.name != 'admin'}">
									<sec:authorize access="hasRole('ROLE_USER')">
									<li><a href="<c:url value="/customer/cart" />"><span
						class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
						</sec:authorize>
								</c:if>

								<c:if
									test="${pageContext.request.userPrincipal.name == 'admin'}">
									<li><a href="<c:url value="/admin" />"></a></li>
								</c:if>

							</c:if>

							<c:if test="${pageContext.request.userPrincipal.name == null}">
								<li><a href="<c:url value="/login" />"><span
						class="glyphicon glyphicon-log-in"></span>Login</a></li>
								<li><a href="<c:url value="/register" />"><span
						class="glyphicon glyphicon-user"></span>Register</a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</nav>
			
				</div>
	</body>