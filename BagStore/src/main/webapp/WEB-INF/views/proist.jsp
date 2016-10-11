<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<script>
    var proApp = angular.module ("proApp", []).controller("proCtrl", function($scope, $http){
    alert("in all");
          $http({method:'GET',url:'listall'}).success(function (data,status,headers,config){
              $scope.products = data;
              alert(data);
          });
          
    });
    
</script>
<div class="container-wrapper">
<div class="container">
    <section class="container" data-ng-app="proApp">
    <div data-ng-controller="proCtrl">
        <p>
            Search product:<input type="next" ng-model="searchkeyword">
        </p>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner main-slides" role="listbox">
                <div class="item" ng-repeat="product in products|filter:searchkeyword" >
                    <img src="${imgurl}{{product.productId}}.png" alt="image">
                    <a href=" <spring:url value="/product/viewProduct/{{product.productId}}"/>" class="btn btn-default">view</a>
                    <p class="prod-nme">{{product.productName}}</p>
                    <span class="prod-cate">{{product.productCategory}}</span>
                    <span>{{product.productDescription}}</span>
                    <span>{{product.productPrice}}USD</span>
                </div>
                <!-- Left and right controls -->
                <a class="left carousel-control"  role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</div>
<script>
    $(document ).ready (function() { 
    	$('.carousel ').carousel({ interval:6000});
    	});
</script>
<%-- <%@ include file="/WEB-INF/views/template/footer.jsp"%> --%>
