<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<head>
<style>
h1 {
    color:yellow;
}
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
</style>
</head>

<!-- <script>
	$(document).ready(
			function() {

				$('.table').DataTable(
						{
							"lengthMenu" : [ [ 1, 2, 3, 5, 10, -1 ],
									[ 1, 2, 3, 5, 10, "All" ] ]
						});
			});
</script> -->

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Update Stock  Info Here!!!</h1>
			<br>
			<table class="table" >
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
				<c:forEach items="${products}" var="product">
					<tr>
						<td><img
							src="<c:url value="/resources/images/${product.productId}.png" />"
							alt="image" style="width: 100%" /></td>
						<td>${product.productName}</td>
						<td>${product.productCategory}</td>
						<td>${product.productDescription}</td>
						<td>${product.productPrice}USD</td>
					<td>

<%-- 							<a href="<spring:url value="/product/viewProduct/${product.productId}" />"><span --%>
<!-- 								class="glyphicon glyphicon-info-sign"></span></a>  -->
							<a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span
								class="glyphicon glyphicon-remove"></span></a> <a
							href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span
								class="glyphicon glyphicon-pencil"></span></a></td>
					</tr>
				</c:forEach>
			</table>

			<a href="<spring:url value="/admin/product/addProduct" />"
				class="btn btn-primary">Add Product</a>
</div>
</div>
</div>
			<%@ include file="/WEB-INF/views/template/footer.jsp"%>