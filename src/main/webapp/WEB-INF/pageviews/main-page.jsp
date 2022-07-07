<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>CRM</title>

<script type="text/javascript">
	function deleteLinkOnClick() {
		var answer = confirm("Do you really want to delete the Customer?");
		if (answer) {
			console.log('user has pressed ok/yes')
		} else {
			console.log('user has pressed no/cancel')
		}
		return answer;
	}
</script>
</head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body style="background-color: LightCyan;">
	<div class="container">
		<h1 class="text-center"
			; style="background-color: LightGreen; font-family: Helvetica;">Customer
			Relationship Management</h1>
		<hr>


		<div class="container">


			<!-- Add a button -->
			<a href="/CRMWebTracker/customer/begin-add"
				class="btn btn-primary btn-sm mb-3"> Add Customer </a>



			<table class="table table-bordered table-striped">
				<thead class="thead-dark">
					<tr>
						<th>firstName</th>
						<th>lastName</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${customers}" var="tempCustomer">
						<tr>
							<td><c:out value="${tempCustomer.firstName}" /></td>
							<td><c:out value="${tempCustomer.lastName}" /></td>
							<td><c:out value="${tempCustomer.email}" /></td>
							<td>
								<!-- Add "update" button/link --> <a
								href="/CRMWebTracker/customer/begin-update?customerId=${tempCustomer.id}"
								class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
								<a
								href="/CRMWebTracker/customer/delete?customerId=${tempCustomer.id}"
								class="btn btn-danger btn-sm"
								onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">
									Delete </a>

							</td>

						</tr>
					</c:forEach>

				</tbody>
			</table>

		</div>

	</div>

</body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<footer>
	<p class="text-center">Made with ❤️ by Shubham</p>
</footer>
</html>