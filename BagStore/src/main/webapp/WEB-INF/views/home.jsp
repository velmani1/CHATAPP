<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<!-- <marquee bgcolor="pink" direction="right" scrollamount="10" width="100%" -->
<!-- 	height="40"> exclusive shopping all branded bags and trolleys -->
<!-- 	only on travelers world! </marquee> -->
<!-- 	<br> -->
<%-- <iframe src="<c:url value="/resources/images/giphy (1).gif"/>"
	scrolling="auto" style="width: 700px; height: 300px;"> </iframe>
<align=left><marquee bgcolor="orange" direction="up" scrollamount="5" width="30%"
	height="500">
	<center>
		<h3>Brands Available</h3>
	</center>
	<center>American traveler</center>
	<center>Samsonite</center>
	<center>Fyntake</center>
</marquee></align>
<br> --%>
<!--  class="giphy-embed" allowFullScreen> -->

<!-- Carousel
        ================================================== -->
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img class="first-slide home-image"
							src="<c:url value="/resources/images/crsl.jpg" />"
							style="width: 1119px; height: 400px; margin-right: 0px; margin-left: 0px;">
						<div class="container">
							<div class="carousel-caption">
								<h1><i>Welcome to SVM Travelers World</i></h1>
								<p><i>Here you can browse and buy World Class Travel Bags.
									Order How for Your Amazing New One!</i></p>
							</div>
						</div>
					</div>
					<div class="item">
						<img class="second-slide home-image"
							src="<c:url value="/resources/images/samcar.jpg" />"
							style="width: 1119px; height: 400px; margin-right: 0px; margin-left: 0px;">
						<div class="container">
							<div class="carousel-caption">
								<h1></h1>
								<p>.</p>
							</div>
						</div>
					</div>
					<div class="item">
						<img class="third-slide home-image "
							src="<c:url value="/resources/images/fyncar.jpg" />"
							style="width: 1119px; height: 400px; margin-right: 0px; margin-left: 0px;">
						<div class="container">
							<div class="carousel-caption">
								<h1><i>Amazing products</i></h1>
								<p><i>Through ups and downs, Somehow I manage to survive in
									life</i></p>
							</div>
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
</div>
<!-- /.carousel -->
<br>
<br>
<br>
<!-- Marketing messaging and featurettes
        ================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

	<!-- Three columns of text below the carousel -->
	
	
		<div class="row">
			<div class="col-lg-4">
				<a class="btn btn-default"
					href="<c:url value="/product/getall?searchCondition=fyntake" />"
					role="button"> <img class="img-circle"
					src="<c:url value="/resources/images/fyntake1.jpeg"/>" alt=""
					width="200" height="200">
				</a>

				<h3><i>FYNETAKE</i></h3>
				<p><i>Take your fyntake friend with you</i></p>

			</div>



			<div class="col-lg-4">
				<a class="btn btn-default"
					href="<c:url value="/product/getall?searchCondition=samsonite" />"
					role="button"> <img class="img-circle"
					src="<c:url value="/resources/images/sam5.jpg"/>" alt=""
					width="200" height="200">
				</a>

				<h3><i>SAMSONITE</i></h3>
				<p><i>An exceptional collections of Bags in favor of the
					traditional and modern genre of Travel</i></p>

			</div>


			<div class="col-lg-4">
				<a class="btn btn-default"
					href="<c:url value="/product/getall?searchCondition=american" />"
					role="button"> <img class="img-circle"
					src="<c:url value="/resources/images/imgus.jpg"/>" alt=""
					width="200" height="200">
				</a>

				<h3><i>AMERICAN TRAVELER</i></h3>
				<p><i>look more stylish with brand</i></p>

			</div>
		</div>
	
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>
