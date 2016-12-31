<html>
<head>
<link href="src/main/webapp/WEB-INF/resources/angular.min.js" />
</head>
<body>
<div>
	
	<div ng-repeat="blog in blogCtrl.blogs">
		
		<div>{{blog.title}}</div>

		<div ng-repeat="comment in blog.comments">
			
			<div>{{comment.comment}}</div>

		</div>
	</div>

</div>
</body>
</html>
