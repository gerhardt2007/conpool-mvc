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
		<h1>Passwords of users</h1>
		<c:if test="${not empty users }">
			<table class="normal-table">
				<thead>
					<tr>
						<th>Id</th>
						<th>Username</th>
						<th>Password</th>
						<th>Version</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${users}">
						<tr>
							<td>${user.id }</td>
							<td>${user.username }</td>
							<td>${user.password }</td>
							<td>${user.version }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
		<a href="http://github.com/nstratos/conpool-mvc.git">See the source code on github</a>
	</div>
</body>
</html>
