<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<head>
<style type="text/css">
.container-wrapper{
.lead{color:green}
 float:left;
 width:100%;
 margin-bottom:50px
}
</style>
</head>
<body>
<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<p class="lead"><h1>Customer registered successfully!</h1></p>
				</div>
			</div>
		</section>

		<section class="container">
			<p>
				<a href="<spring:url value="/product/getall" />"
					class="btn btn-default">Products</a>
			</p>
		</section>
		</div>
		</div>
</body>
		<%@ include file="/WEB-INF/views/template/footer.jsp"%>