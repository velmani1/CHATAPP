/*app.controller('BlogController', ['BlogService','$http', function(BlogService, $http){
	
	var self = this;
	self.blogs = [];

	fetchAllBlogs();


	function fetchAllBlogs () {
		BlogService
		.fetchAllBlogs()
	    .then(function(data){
	   		self.blogs = data;
		 },function (errResponse) {
			console.error('Error while fetching the blogs');
		})
	}

	
}]);







Simple blog front end demo in order to learn AngularJS - You can add new posts, add comments, and like posts.



(function(){
  var app = angular.module('blogApp',[]);
  
  app.controller('BlogController', ['$http', function($http){
    
    var blog = this;
    blog.title = "AngularJS Blog App";
    
    blog.posts = {};
    $http.get('https://s3-us-west-2.amazonaws.com/s.cdpn.io/110131/posts_1.json').success(function(data){
      blog.posts = data;
    });
    
    blog.tab = 'blog';
    
    blog.selectTab = function(setTab){
      blog.tab = setTab;
      console.log(blog.tab)
    };
    
    blog.isSelected = function(checkTab){
      return blog.tab === checkTab;
    };
    
    blog.post = {};
    blog.addPost = function(){
      blog.post.createdOn = Date.now();
      blog.post.comments = [];
      blog.post.likes = 0;
      blog.posts.unshift(this.post);
      blog.tab = 0;
      blog.post ={};
    };   
    
  }]);
  
  app.controller('CommentController', function(){
    this.comment = {};
    this.addComment = function(post){
      this.comment.createdOn = Date.now();
      post.comments.push(this.comment);
      this.comment ={};
    };
  });
 
})();*/