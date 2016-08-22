<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add items to your Wardrobe</title>

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

<style type="text/css">
html, body {
	text-shadow: 0 1px 3px rgba(0, 0, 0, .5);
}
</style>

</head>
<body>

	<jsp:include page="../views/fragments/header.jsp"></jsp:include>

	<div class="container">
		<div class="row">

			<form action="<spring:url value="/addItem"/>" method="post"
				class="col-md-8 col-md-offset-2">

				<div class="form-group">
					<label for="item-name">Name</label> <input type="text"
						id="item-name" class="form-control" name="name" />
				</div>
				<div class="form-group">
					<label for="item-category">Category</label> <input type="text"
						id="item-category" class="form-control" name="category" />
				</div>
				<div class="form-group">
					<label for="item-color">Color</label> <input type="text"
						id="item-color" class="form-control" name="color" />
				</div>
				<div class="form-group">
					<label for="item-location">Location</label> <input type="text"
						id="item-location" class="form-control" name="location" />
				</div>
				<div class="form-group">
					<label for="item-image">Image</label> <input type="text"
						id="item-image" class="form-control" name="image" />
				</div>
				<div class="form-group">
					<label for="description">Description</label>
					<textarea class="form-control" name="description" rows="3"></textarea>
				</div>
				<div class="form-group">
					<label for="item-recommendation">Recommend</label> <input
						type="text" id="item-recomemendation" class="form-control"
						name="recommendation" />
				</div>

				<div class="form-group">
					<label for="item_size">Size</label> <select name="size"
						class="selectpicker">
						<option></option>
						<option value="s">S</option>
						<option value="m">M</option>
						<option value="l">L</option>
					</select>
				</div>
				<button type="submit" class="btn btn-default">Submit</button>

			</form>

		</div>
	</div>
</body>
</html>