<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<style>
.lead{color:green}
h1 {
    color: red;
}
</style>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="well">
                    <h1>Invalid Cart!</h1>
                    <h2 class="lead">There are no products available in your cart,Add products to the cart to proceed checkout!</h2>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/product/getall" />" class="btn btn-default">Products</a></p>
        </section>
        </div>
        </div>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>