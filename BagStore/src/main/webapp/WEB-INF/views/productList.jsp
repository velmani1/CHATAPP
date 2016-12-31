<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<head>
<style>
table, td, th {
    border: 1px solid black;
}

table {
    width: 100%;
}

th {
    text-align: left;
}
td{color:white;
}
.lead{color:green}
h1 {
    color: maroon;
}
}

</style>
</head>
<!-- <script>
	$(document).ready(
			function() {
				var searchCondition = '${searchCondition}';

				$('.table').DataTable(
						{
							"lengthMenu" : [ [ 1, 2, 3, 5, 10, -1 ],
									[ 1, 2, 3, 5, 10, "All" ] ],
							"oSearch" : {
								"sSearch" : searchCondition
							}
						});
			})
</script> -->
<script>

		var proApp = angular.module ("proApp", []).controller("proCtrl", function($scope, $http){
		alert("in all");
	       $http({method:'GET',url:'listall'}).success(function (data,status,headers,config){
	           $scope.products = data;	
	           console.log(data);
	       });
	       
		});
	
	</script>

<div class="container-wrapper">
	<div class="container">
		<div class="well">
			<h1>All Products</h1>

			<p class="lead">Checkout all the awesome products available now!</p>
		</div>
<section class="container" data-ng-app="proApp">
<div data-ng-controller="proCtrl">
<body>
<p>Search product:<input type="next" ng-model="searchkeyword"></p>
<br>
		<table class="table">
		
			<thead>
				<tr class="bg-success">
					<th>Proto Thumb</th>
					<th>Product Name</th>
					<th>Category</th>
					<th>Description</th>
					<th>Price</th>
					<th></th>
				</tr>
			</thead>
		<c:url value="/resources/images/" var="imgurl"/>
			<%-- <c:forEach items="${products}" var="product"> --%>
					<tr ng-repeat="product in products|filter:searchkeyword" >
<!-- 					<!--<td>hi {{product.productId}}</td> -->
					<td><img src="${imgurl}{{product.productId}}.png" alt="image" style="width: 100%"></td>
					<td>{{product.productName}}</td>
					<td>{{product.productCategory}}</td>
					<td>{{product.productDescription}}</td>
					<td>{{product.productPrice}}USD</td>
					<td><a href="<spring:url value="/product/viewProduct/{{product.productId}}"/>"> <span class="glyphicon glyphicon-info-sign"></span></a></td>
				</tr>
							<%-- </c:forEach> --%>
		</table>
	</div>
	</section>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>