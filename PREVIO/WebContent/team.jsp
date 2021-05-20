<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet" href="resources/css/card.css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
	rel='stylesheet' type='text/css'>
<title>Team</title>
</head>
<body>

	<h1>Equipos</h1>
	<div>
		<jsp:useBean id="c" class="com.dao.CyclistDao" scope="page"></jsp:useBean>
		<c:set var="list" scope="session" value="${t.list()}" />
		<c:set var="count" value="0" />
		<c:forEach var="e" items="${list}">
			<tr>
				<img src="resources/img/uniforme/${e.country}.png">
			</tr>
		</c:forEach>
	</div>
</body>
</html>