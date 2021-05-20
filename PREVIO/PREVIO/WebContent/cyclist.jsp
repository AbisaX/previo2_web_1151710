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

	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>CORREDOR</th>
				<th>EQUIPO</th>
			</tr>
		</thead>
		<tbody>
			<jsp:useBean id="c" class="com.dao.CyclistDao" scope="page"></jsp:useBean>
			<c:set var="list" scope="session" value="${c.list()}" />
			<c:set var="count" value="0" />
			<c:forEach var="e" items="${list}">
				<tr>
					<c:set var="count" value="${contador + 1}" />
					<td>${count} }</td>
					<img src="resources/img/bandera/country_${e.country}.png">
					<td>${e.name}</td>
					<td>${e.team}</td>
				</tr>
			</c:forEach>
		</tbody>


	</table>

</body>
</html>