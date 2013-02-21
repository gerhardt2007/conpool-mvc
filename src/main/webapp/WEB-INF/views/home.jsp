<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home of conpoolmvc</title>
</head>
<body>
<h1>
	Hello world! This is conpool-mvc 
</h1>

<p>A tutorial app to help me learn spring. It uses:</p>
<ol>
<li>Connection pooling with tomcat</li>
<li>Hibernate</li>
<li>Spring Tool Suite MVC template</li>
<li>h2 database</li>
</ol>
<p><a href="users">See the users in the database</a></p>
<p><a href="passwords">See passwords of users</a></p>
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
