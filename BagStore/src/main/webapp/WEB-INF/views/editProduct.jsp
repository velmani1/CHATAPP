<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Edit Product</h1>


			<p class="lead">Please update the product information here:</p>
		</div>

		<form:form
			action="${pageContext.request.contextPath}/admin/product/editProduct"
			method="post" commandName="product" enctype="multipart/form-data">

			<form:hidden path="productId" value="${product.productId}" />

			<div class="form-group">
				<label for="name">Name</label>
				<form:errors path="productName" cssStyle="color:#ff0000;" />
				<form:input path="productName" id="name" class="form-Control"
					value="${product.productName}" />
			</div>

			<div class="form-group">
				<label for="category">Category</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="american" />American Travelers</label>
				<label class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="samsonite" />Samsonite</label> <label
					class="checkbox-inline"><form:radiobutton
						path="productCategory" id="category" value="fyntake" />Fyntake</label>
			</div>

			<div class="form-group">
				<label for="description">Description</label>
				<form:textarea path="productDescription" id="description"
					class="form-Control" value="${product.productDescription}" />
			</div>

			<div class="form-group">
				<label for="price">Price</label>
				<form:errors path="productPrice" cssStyle="color:#ff0000;" />
				<form:input path="productPrice" id="price" class="form-Control"
					value="${product.productPrice}" />
			</div>

			
			<div class="form-group">
				<label for="unitInStock">Unit In Stock</label>
				<form:errors path="unitInStock" cssStyle="color:#ff0000;" />
				<form:input path="unitInStock" id="unitInStock" class="form-Control"
					value="${product.unitInStock}" />
			</div>

		
			<div class="form-group">
				<label class="control-label" for="productImage">Upload
					Picture</label>
				<form:input id="productImage" path="productImage" type="file"
					class="form:input-large" />
			</div>

			<br />
			<br />

			<input type="submit" value="submit" class="btn btn-default">
			<a href="<c:url value="/admin/productInventory" />"
				class="btn btn-default">Cancel</a>

		</form:form>


		<%@ include file="/WEB-INF/views/template/footer.jsp"%>