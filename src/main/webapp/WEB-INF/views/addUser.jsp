<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="resources/css/signin.css">


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
<style>
</style>
</head>
<body>

	<div class="container">

		<form class="form-signin" action="<spring:url value="/addUser"/>"
			method="post">
			<h2 class="form-signin-heading">Please type in the following</h2>
			<label for="username" class="sr-only">Username</label> <input
				type="text" id="user-name" name="username" class="form-control"
				placeholder="Username" required autofocus> <label
				for="password" class="sr-only">Password</label> <input
				type="password" id="password" name="password" class="form-control"
				placeholder="Password" required>
			<div class="checkbox">
				<label> <input type="checkbox" value="remember-me">
					Remember me
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
		</form>

	</div>
	<!-- /container -->


</body>
</html>
