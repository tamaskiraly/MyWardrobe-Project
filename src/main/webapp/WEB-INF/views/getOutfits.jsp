<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- SLICK CAROUSEL CSS -->
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/jquery.slick/1.5.9/slick.css" />

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<!-- SLICK CAROUSEL JS -->
<script type="text/javascript"
	src="//cdn.jsdelivr.net/jquery.slick/1.5.9/slick.min.js"></script>

<!--  -->


<style type="text/css">
html, body {
	text-shadow: 0 1px 3px rgba(0, 0, 0, .5);
}

.thumbnail>img, .thumbnail a>img {
	height: 250px;
	margin-right: auto;
	margin-left: auto;
	width: auto;
}

/*2x CAROUSELS */
/*.centerAutoplay{
  min-height:450px; */
}
.centerAutoplay2 {
	height: 300px;
}

.centerAutoplay2 #autoplay-inner {
	text-align: center;
	background: rgb(40, 51, 73);
	background-color: rgba(0, 0, 0, .5);
	width: 300px;
}

#autoplay-inner:hover {
	background: rgb(40, 51, 73);
	background-color: rgba(0, 0, 0, .1);
}

.dark-background {
	background: rgb(40, 51, 73);
	background-color: rgba(0, 0, 0, .5);
}

.dark-background:hover {
	background: rgb(40, 51, 73);
	background-color: rgba(0, 0, 0, .1);
}

button.slick-next.slick-arrow {
	bottom: 1px;
	position: absolute;
	right: 0px;
	top: 0px;
	float: right;
	z-index: 2;
	color: white;
	border: 1px solid #999999;
	border-radius: 3px 3px 3px 3px;
	background-color: #999999;
	width: 60px;
	opacity: 0.3;
}

button.slick-prev.slick-arrow {
	position: absolute;
	bottom: 1px;
	left: 0px;
	top: 0px;
	float: left;
	z-index: 2;
	color: white;
	border: 1px solid #999999;
	border-radius: 3px 3px 3px 3px;
	background-color: #999999;
	width: 60px;
	opacity: 0.3;
}

.navIcon {
	font-size: 200%;
}

.disabledDiv {
	pointer-events: none;
}
/*NEXT and PREVIEWS buttons ON HOVER*/
button.slick-next.slick-arrow:hover, button.slick-prev.slick-arrow:hover
	{
	color: #999999;
	border: 1px solid #999999;
	border-radius: 3px 3px 3px 3px;
	background-color: #e9eaec;
}
/*Frame-Border with INNER shadow */
.vignette-shadow {
	border-radius: 5px;
	background: url("");
	width: auto;
	height: auto;
	-webkit-box-shadow: inset 0 0 155px #999999, inset 0 0 0 #000, inset 0 0
		0 #000;
	-moz-box-shadow: inset 0 0 155px #999999, inset 0 0 0 #000, inset 0 0 0
		#000;
	box-shadow: inset 0 0 155px #999999, inset 0 0 0 #000, inset 0 0 0 #000;
}

.panel-title {
	font-family: 'Open Sans', sans-serif !important;
}

.panel-primary>.panel-heading {
	color: #fff;
	background-color: #b08a75;
	border-color: #955532;
}

#salonsInfo:hover>h3.hiddenLocation {
	background: white;
	color: #b08a75;
}

h3.hiddenLocation {
	color: transparent;
}

#shelf{
width: 100%;
}

/* #viewButton:hover{
	display:none;
} */
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><sec:authentication property="name" />`s Outfits</title>
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">

		<div class="navbar-header">
			<a style="padding: 0;" class="navbar-brand climate_bgHeader"></a> <a
				style="padding: 15;" class="navbar-brand temperatureHeader"></a> <a
				style="padding: 15;" class="navbar-brand locationHeader"></a>
		</div>

		<ul class="nav navbar-nav">

			<li><a href="index">Home</a></li>
			<li><a href="getItems">MyWardrobe</a></li>



			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false">Items<span
					class="caret"></span></a>

				<ul class="dropdown-menu" role="menu">
					<li><a href="addItem">Add</a></li>
					<li><a href="getItems">Find</a></li>
				</ul></li>

			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-expanded="false">Outfit
					<span class="caret"></span>
			</a>

				<ul class="dropdown-menu" role="menu">
					<li><a href="planOutfit">Add</a></li>
					<li><a href="getOutfits">Find</a></li>
				</ul></li>

			<li><a href="j_spring_security_logout">Log Out</a></li>
		</ul>

	</div>
	</nav>
	<div class="text-center">
		<h1>
			<sec:authentication property="name" />
			`s Wardrobe
		</h1>
	</div>

	<!-- End Of Nav -->

	<c:forEach items="${outfits}" var="outfit">
		<div class="container-fluid">
			<img class="image-responsive" id="shelf"
				src="https://s3-eu-west-1.amazonaws.com/testphotoswebsite/img/oie_cDGp1AosluqA.jpg"
				style="width: -moz-available;">
		</div>
		<div class="text-center panel panel-primary" style="border: none;">

			<div class="panel-heading">
				<h3 class="panel-title">${outfit.name}</h3>
			</div>

			<hr>
			<div data-role="page" id="centerAutoplay2" class="centerAutoplay"
				style="width: 100%;">
				<c:forEach items="${outfit.items}" var="item">

					<div id="autoplay-inner" class="dark-background"
						style="border: 2px solid white;">
						<div
							style="position: absolute; z-index: -2; height: 100%; width: 100%;">
							<img alt="" src="${item.image}" style="height: 100%;">
							<%-- <%= image_tag treatment.image, :style => "height:100%;" %> --%>
						</div>
						<div id="salonsInfo"
							style="height: 300px; text-align: center; color: black; margin: 0 auto; font-size: 120%">
							<h3 style="color: white">${item.name}</h3>
							<br>
							<h3 class="hiddenLocation">You can find this item in :</h3>
							<h3 class="hiddenLocation">${item.location}</h3>
						</div>

						<div style="text-align: center; margin-top: 0px; height: 40px;">
							<%--  <%= link_to "VIEW", treatment, :class => "btn btn-success btn-sm" %> --%>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</c:forEach>
	<div class="container-fluid">
		<img class="image-responsive" id="shelf"
			src="https://s3-eu-west-1.amazonaws.com/testphotoswebsite/img/oie_cDGp1AosluqA.jpg"
			style="width: -moz-available;">
	</div>



	<script type="text/javascript">
		jQuery(window)
				.ready(
						function() {

							// executes when HTML-Document is loaded and DOM is ready
							/*Salons Slide Show*/
							$('#centerAutoplay1, #centerAutoplay2')
									.slick(
											{
												prevArrow : '<button type="button" data-role="none" class="slick-prev" aria-label="Previous" tabindex="0" role="button"><span class="glyphicon glyphicon-chevron-left navIcon" aria-hidden="true"></span></button>',
												nextArrow : '<button type="button" data-role="none" class="slick-next" aria-label="Next" tabindex="0" role="button"><span class="glyphicon glyphicon-chevron-right navIcon" aria-hidden="true"></span></button>',
												initialSlide : 0,
												centerMode : true,
												autoplay : true,/*true - if auto scroll*/
												centerPadding : '60px',
												slidesToShow : 3,
												swipe : true,
												autoplaySpeed : 10000,
												responsive : [ {
													breakpoint : 1200,
													settings : {
														arrows : true,
														swipe : true,
														centerMode : false,
														slidesToShow : 3
													}
												}, {
													breakpoint : 968,
													settings : {
														arrows : true,
														swipe : true,
														centerMode : false,
														slidesToShow : 2
													}
												}, {
													breakpoint : 480,
													settings : {
														rows : 1,
														slidesPerRow : 1,
														vertical : false,
														arrows : false,
														swipe : true,
														slidesToShow : 1,
														infinite : true,
														speed : 700,
														fade : true,
														cssEase : 'linear'
													}
												} ]
											});
						});
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.simpleWeather/3.1.0/jquery.simpleWeather.min.js"></script>
	<script src="resources/js/weather.js"></script>
</body>
</html>