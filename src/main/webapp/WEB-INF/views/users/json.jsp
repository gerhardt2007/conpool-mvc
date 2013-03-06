<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<link href="<c:url value="/resources/css/users.css" />"
	rel="stylesheet" type="text/css" media="screen">
<title>Listing Users in Json</title>
</head>
<body>
	<div class="container">
		<h1>Data in JSON format</h1>
		<pre>${json }</pre>
	</div>
</body>
</html>
