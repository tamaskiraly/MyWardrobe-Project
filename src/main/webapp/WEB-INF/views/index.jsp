<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1.0">
<title>My Wardrobe App</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<spring:url value="/resources/css/home.css"/>" type="text/css" />
<link rel="stylesheet"
	href="<spring:url value="/resources/css/bootstrap-select.min.css"/>"
	type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script
	src="<spring:url value="/resources/js/bootstrap-select.min.js"/>"></script>

<link
	href="http://fonts.googleapis.com/css?family=Montserrat:400,700,inherit,400"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="resources/css/standardize.css">
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Nunito:300,400,700'
	rel='stylesheet' type='text/css'>
<style>
.image {
	position: relative;
	width: 100%;
	box-shadow: 0px 0px 6px 3px rgba(119, 119, 119, 0.63);
}

h1 {
	position: absolute;
	width: 100%;
	z-index: 1;
	font-size: 3vw;
}

a {
	
}

a:hover {
	opacity: 0.5;
}
/*

* Based on Cover by https://twitter.com/mdo"  @mdo
* added cover image and background color to match (green)
*
* Globals

*/

/* Links */
a, a:focus, a:hover {
	color: #fff;
}

/* Custom default button */
.btn-default, .btn-default:hover, .btn-default:focus {
	color: #333;
	text-shadow: none; /* Prevent inheritence from `body` */
	background-color: #fff;
	border: 1px solid #fff;
}

/*
 * Base structure
 */
html, body {
	/*css for full size background image*/
	background:
		url(https://s3-eu-west-1.amazonaws.com/testphotoswebsite/img/oie_transparent.png)
		no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	height: 100%;
	background-color: black;
	color: #fff;
	text-align: center;
	text-shadow: 0 1px 3px rgba(0, 0, 0, .5);
}

/* Extra markup and styles for table-esque vertical and horizontal centering */
.site-wrapper {
	display: table;
	width: 100%;
	height: 100%; /* For at least Firefox */
	min-height: 100%;
	-webkit-box-shadow: inset 0 0 100px rgba(0, 0, 0, .5);
	box-shadow: inset 0 0 100px rgba(0, 0, 0, .5);
}

.site-wrapper-inner {
	display: table-cell;
	vertical-align: top;
}

.cover-container {
	margin-right: auto;
	margin-left: auto;
}

/* Padding for spacing */
.inner {
	padding: 30px;
}

/*
 * Header
 */
.masthead-brand {
	margin-top: 10px;
	margin-bottom: 10px;
}

.masthead-nav>li {
	display: inline-block;
}

.masthead-nav>li+li {
	margin-left: 20px;
}

.masthead-nav>li>a {
	padding-right: 0;
	padding-left: 0;
	font-size: 16px;
	font-weight: bold;
	color: #fff; /* IE8 proofing */
	color: rgba(255, 255, 255, .95);
	border-bottom: 2px solid transparent;
}

.masthead-nav>li>a:hover, .masthead-nav>li>a:focus {
	background-color: transparent;
	border-bottom-color: #a9a9a9;
	border-bottom-color: rgba(255, 255, 255, .25);
}

.masthead-nav>.active>a, .masthead-nav>.active>a:hover, .masthead-nav>.active>a:focus
	{
	color: #fff;
	border-bottom-color: #fff;
}

@media ( min-width : 768px) {
	.masthead-brand {
		float: left;
	}
	.masthead-nav {
		float: right;
	}
}

/*
 * Cover
 */
.cover {
	padding: 0 20px;
}

.cover .btn-lg {
	padding: 10px 20px;
	font-weight: bold;
}

/*
 * Footer
 */
.mastfoot {
	color: #999; /* IE8 proofing */
	color: rgba(255, 255, 255, .5);
}

/*
 * Affix and center
 */
@media ( min-width : 768px) {
	/* Pull out the header and footer */
	.masthead {
		position: fixed;
		top: 0;
	}
	.mastfoot {
		position: fixed;
		bottom: 0;
	}
	/* Start the vertical centering */
	.site-wrapper-inner {
		vertical-align: middle;
	}
	/* Handle the widths */
	.masthead, .mastfoot, .cover-container {
		width: 100%;
		/* Must be percentage or pixels for horizontal alignment */
	}
}

@media ( min-width : 992px) {
	.masthead, .mastfoot, .cover-container {
		width: 700px;
	}
}
</style>


</head>
<body>
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	<div class="container-fluid">



		<div class="row">
			<!-- <div class="textwcode"></div> -->
			<div class="col-md-12">

				<div class="media col-sm-4 col-sm-offset-4">
					<div class=" media-middle">
						<a href="getItems">
							<h1>Browse Wardorbe</h1> <img class="image"
							src="resources/img/pexels-photo-26549.jpg" data-src="..."
							alt="Generic placeholder image">
						</a>
					</div>
				</div>


				<span class="push"></span>
				<div class="media col-sm-4 col-sm-offset-4">
					<div class=" media-middle">
						<a href="planOutfit">
							<h1>Plan Outfit</h1> <img class="image"
							src="resources/img/fashion-men-vintage-colorful.jpg" />
						</a>
					</div>
				</div>
				<span class="push"></span>
				<div class="media col-sm-4 col-sm-offset-4">

					<a href="getOutfits">

						<h1>Browse Outfits</h1> <img class="image"
						src="resources/img/fashion-man-person-model-large.jpg" />
					</a>
				</div>
			</div>
			<span class="push"></span>
		</div>
	</div>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.simpleWeather/3.1.0/jquery.simpleWeather.min.js"></script>
	<script src="resources/js/weather.js"></script>

</body>
</html>