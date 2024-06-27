<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Estudiantes</title>
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
			<h2>Edición de Estudiante</h2>
		</div>

		<form class="form" action="students" method="POST">
			<input type="hidden" id="id" name="id" value="${student.getId()}">
			<div class="row">
				<div class="col">
					<label class="form-label" for="name">Nombre:</label> <input
						class="form-control" type="text" id="name" name="name"
						value="${student.getName()}">
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label class="form-label" for="lastName">Apellido:</label> <input
						class="form-control" type="text" id="lastName" name="lastName"
						value="${student.getLastName()}">
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label class="form-label" for="address">Dirección:</label> <input
						class="form-control" type="text" id="address" name="address"
						value="${student.getAddress()}">
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label class="form-label" for="birthday">Cumpleaños:</label> <input
						class="form-control" type="date" id="birthday" name="birthday"
						value="${student.getBirthday()}">
				</div>
			</div>
			<div class="row pt-4 pb-4">
				<div class="col">
					<a href="students" class="btn btn-secondary">Volver</a>
				</div>
				<div class="col">
					<button class="btn btn-primary" type="submit">Guardar</button>
				</div>
			</div>
		</form>

		<jsp:include page="./footer.jsp"></jsp:include>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

</body>
</html>