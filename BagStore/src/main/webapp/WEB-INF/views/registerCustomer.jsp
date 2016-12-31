<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<style type="text/css">
.container-wrapper{
.lead{color:green}
 float:left;
 width:100%;
 margin-bottom:50px
}
</style>
<body>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register"
                   method="post" commandName="customer">

        <h3>Basic Info:</h3>

        <div class="form-group">
            <label for="name">Name</label>
            <form:errors path="customerName" cssStyle="color: #ff0000" />
            <form:input path="customerName" id="name" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <span style="color: #ff0000">${emailMsg}</span>
            <form:errors path="customerEmail" cssStyle="color: #ff0000" />
            <form:input path="customerEmail" type="email" id="email" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
             <span style="color: #ff0000">${phoneMsg}</span>
              <form:errors path="customerPhone" cssStyle="color: #ff0000" />
            <form:input path="customerPhone" pattern="[9|8|7][0-9]{9}" id="phone" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="username">Username</label>
            <span style="color: #ff0000">${usernameMsg}</span>
            <form:errors path="username" cssStyle="color: #ff0000" />
            <form:input path="username" id="username" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <form:errors path="password" cssStyle="color: #ff0000" />
            <form:password path="password" id="password" class="form-Control" />
        </div>


        <br/>

        <h3>Billing Address:</h3>

        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <%-- <form:errors path="billingStreet" cssStyle="color: #ff0000" /> --%>
            <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control" required="true"/>
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label>
             <%-- <form:errors path="billingApartmentNumber" cssStyle="color: #ff0000" /> --%>
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" required="true"/>
        </div>

        <div class="form-group">
            <label for="billingCity">City</label>
           <%--  <form:errors path="billingCity" cssStyle="color: #ff0000" /> --%>
            <form:input path="billingAddress.city" id="billingCity" class="form-Control" required="true"/>
        </div>

        <div class="form-group">
            <label for="billingState">State</label>
            <%-- <form:errors path="billingState" cssStyle="color: #ff0000" /> --%>
            <form:input path="billingAddress.state" id="billingState" class="form-Control" required="true"/>
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <%-- <form:errors path="billingCountry" cssStyle="color: #ff0000" /> --%>
            <form:input path="billingAddress.country" id="billingCountry" class="form-Control" required="true"/>
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <%-- <form:errors path="billingZip" cssStyle="color: #ff0000" /> --%>
            <form:input path="billingAddress.zipCode" id="billingZip" class="form-Control" required="true"/>
        </div>

        <br/>

        <h3>Shipping Address:</h3>

        <div class="form-group">
            <label for="shippingStreet">Street Name</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control" required="true"/>
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Apartment Number</label>
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="col-md-6 form-Control" required="true" />
        </div>

        <div class="form-group">
            <label for="shippingCity">City</label>
            <form:input path="shippingAddress.city" id="shippingCity" class="form-Control" required="true"/>
        </div>

        <div class="form-group">
            <label for="shippingState">State</label>
            <form:input path="shippingAddress.state" id="shippingState" class="form-Control" required="true"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry">Country</label>
            <form:input path="shippingAddress.country" id="shippingCountry" class="form-Control" required="true"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Zipcode</label>
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control" required="true"/>
        </div>

        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>

        </form:form>
       <script>
$(document).ready(function(){
    $("reg").blur(function(){
        alert("enter valid details..");
    });
});
</script>
</body>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>