var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http){

    $scope.refreshCart = function(){
       $http.get('/BagStore/rest/cart/' + $scope.cartId).success(function (data){
           $scope.cart = data;
           setTimeout(function(){location.reload();},1000000);
       });
    };

    $scope.clearCart = function(){
    	alert('clear');
        $http({method:'DELETE',url:'/BagStore/rest/cart/' + $scope.cartId}).success($scope.refreshCart());
    };

    $scope.initCartId = function(cartId){
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function(productId){
        $http.put('/BagStore/rest/cart/add/' + productId).success(function (){
            alert('Product successfully added to the cart!');
        }).error(function(data,status){
        alert("Please Login First");		
    } );
    };

    $scope.removeFromCart = function(productId){
    	alert('hi');
    	$http({method:'DELETE',url:'/BagStore/rest/cart/remove/' + productId}).success(function(){
    		$scope.refreshCart();
    	
    	    	}).error(function(data,status,responser){
    	            alert("why");
    	});
    
    };
    $scope.calGrandTotal = function(){
        var grandTotal = 0;

        for (var i = 0; i < $scope.cart.cartItems.length; i++){
            grandTotal += $scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    }
        
});

