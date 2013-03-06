<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<link href="<c:url value="/resources/css/users.css" />"
	rel="stylesheet" type="text/css" media="screen">
<title>Listing Contacts</title>
</head>
<body>
	<div class="container">
		<h1>Users in database</h1>
		<c:if test="${not empty users }">
			<table class="normal-table">
				<thead>
					<tr>
						<th>Id</th>
						<th>Username</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Birth Date</th>
						<th>Gender</th>
						<th>Country</th>
						<th>About you</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${users}">
						<tr>
							<td>${user.id }</td>
							<td>${user.username }</td>
							<td>${user.firstName }</td>
							<td>${user.lastName }</td>
							<td>${user.birthDate }</td>
							<td>${user.gender }</td>
							<td>${user.country }</td>
							<td>${user.aboutYou }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
		<a href="passwords">See the passwords</a>
		<p><a href="users/json">All users in JSON format</a></p>
	</div>
</body>
</html>
