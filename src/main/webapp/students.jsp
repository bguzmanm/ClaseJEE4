<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Estudiantes</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<link rel="stylesheet" href="./estilos.css" />

</head>
<body>
	<div class="container">
		<jsp:include page="./header.jsp"></jsp:include>

		<div class="container">
			<h2>Listado de Estudiantes</h2>
		</div>
		<div class="row">
			<h4><%= session.getAttribute("username")%></h4>
		</div>
		<table class="table">
			<thead class="table-dark">
				<tr>
					<th>#</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Dirección</th>
					<th>Naciemiento</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="student" items="${students}">
				<tr>
					<th><a href="${pageContext.request.contextPath}/students?id=${student.getId()}"><c:out value="${student.getId()}"></c:out></a></th>
					<td><c:out value="${student.getName()}"></c:out></td>
					<td><c:out value="${student.getLastName()}"></c:out></td>
					<td><c:out value="${student.getAddress()}"></c:out></td>
					<td><c:out value="${student.getBirthday()}"></c:out></td>
				</tr>
				
				</c:forEach>
			</tbody>
		</table>




		<jsp:include page="./footer.jsp"></jsp:include>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>