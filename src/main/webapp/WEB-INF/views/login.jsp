<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>My Wardrobe Log In</title>
<title>Sign In</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	
	<link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap-select.min.css"/>" type="text/css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script src="<spring:url value="/resources/js/bootstrap-select.min.js"/>"></script>
<link href='https://fonts.googleapis.com/css?family=Nunito:300,400,700' rel='stylesheet' type='text/css'>  --%>

<style type="text/css">
html, body {
	text-shadow: 0 1px 3px rgba(0, 0, 0, .5);
}

input, select, textarea {
	color: black;
}

/* #signInContainer hr {
  -moz-border-bottom-colors: none;
  -moz-border-image: none;
  -moz-border-left-colors: none;
  -moz-border-right-colors: none;
  -moz-border-top-colors: none;
  border-color: #EEEEEE -moz-use-text-color #FFFFFF;
  border-style: solid none;
  border-width: 1px 0;
  margin-left: 0px; 
  margin-right: 0px;
} */
/* #linkToResetPassword a:hover {
		text-decoration: underline;
		background-color: transparent;
		color: black;
	}

	#btnLinkTo a {
		color: white;
		height: 33px;
		width: 50px;
		background-color:#f16164;
		border-color:#f16164;
		text-decoration: none;
		border-radius: 3px 3px 3px 3px;
		padding: 5px;
	}#btnLinkTo a:hover{
		color: white;
		background-color:#f16164;
        border-color:#f16164;
	}
	.SignIn  {
		color: white;
		height: 33px;
		background-color:#f16164;
		border:none;
		border-radius: 3px 3px 3px 3px;
		text-decoration: none;
		padding: 5px;
	}.SignIn:hover{
		color: white;
		background-color:#f16164;
        
	}

	.gray{ 
		background-color:	#e9eaec; 
		margin-top: 10px;
		margin-left: 10px; 
  		margin-right: 10px;
  		padding-top: 10px;
  		padding-bottom: 10px;
  		border-color: 	#e9eaec;

  	} */
.header {
	font-size: 50px;
	color: #283349;
}

html {
	background:
		url(https://s3-eu-west-1.amazonaws.com/testphotoswebsite/img/pexels-photo-102129.jpg)
		no-repeat center fixed;
	background-size: cover;
}
</style>
<!-- </head>
	<style type="text/css">
		.errorblock {
			color: #ff0000;
			background-color: #ffEEEE;
			border: 3px solid #ff0000;
			padding: 8px;
			margin: 16px;
		}
	</style> -->
</head>

<body class="container-fluid" onload='document.f.j_username.focus();'
	style="background-color: transparent;">




	<div class="col-md-4 col-md-offset-4 text-center"
		style="padding-top: 10px; padding-bottom: 10px; margin-top: 100px; background-color: #333; color: white; opacity: 0.8;">
		<h3 style="padding-bottom: 30px;">My Wardrobe Login Page</h3>

		<c:if test="${not empty error}">
			<div class="errorblock">
				Your login was unsuccessful. <br /> Caused:
				${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message }
			</div>
		</c:if>

		<form class="form-horizontal" action="j_spring_security_check"
			name="f" method="post">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
				<div class="col-sm-10">
					<input type="text" class="form-control input-sm" id="inputEmail3"
						placeholder="Username" name="j_username" value="">
				</div>
			</div>

			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
				<div class="col-sm-10">
					<input type="password" class="form-control input-sm"
						id="inputPassword3" placeholder="Password" name="j_password">
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-1 col-sm-11">
					<button type="submit" class="btn btn-default">Sign in</button>
				</div>
			</div>

		</form>
		<form action="addUser" method="get">
			<div class="form-group">
				<div class="col-sm-offset-1 col-sm-11">
					<button type="submit" class="btn btn-default">Register</button>
				</div>
			</div>
		</form>
	</div>



</body>


</html>