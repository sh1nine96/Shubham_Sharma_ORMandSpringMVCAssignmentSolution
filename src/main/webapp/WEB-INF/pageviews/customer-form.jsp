<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>


<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">


<title>Save/Update Customer</title>
</head>


<body style="background-color: LightCyan;">


	<div class="container">

		<h3 class="text-center"
			; style="background-color: LightGreen; font-family: Helvetica;">Add/Update
			Customer Details</h3>
		<hr>

		<p class="h4 mb-4">Student Details</p>

		<form action="/CRMWebTracker/customer/save" method="POST">

			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value="${customer.id}" />

			<div class="form-inline">
				<input type="text" name="firstName" value="${customer.firstName}"
					class="form-control mb-4 col-4" placeholder="First Name">
			</div>
			
			<div class="form-inline">
				<input type="text" name="lastName" value="${customer.lastName}"
					class="form-control mb-4 col-4" placeholder="Last Name">
			</div>
			
			<div class="form-inline">
				<input type="text" name="email" value="${customer.email}"
					class="form-control mb-4 col-4" placeholder="Email">
			</div>
			<button type="submit" class="btn btn-info col-2">Save</button>
		</form>

		<hr>
		<a href="/CRMWebTracker/customers/listing">Go Back to Customers List</a>


	</div>
</body>

<br>
<br>
<br>
<br>
<br>
<br>
<hr>
<footer>
	<p class="text-center">Made with ❤️ by Shubham</p>
</footer>


</html>