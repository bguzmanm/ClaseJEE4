<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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

		<main class="container">
			<form action="login" method="patch">
				<div class="row">
					<div class="col">
						<label for="username" class="form-label">Usuario:</label> <input
							type="email" id="username" name="username" class="form-control">
					</div>
				</div>
				<div class="row">
					<div class="col">
						<label for="password" class="form-label">Contraseña:</label> <input
							type="password" id="password" name="password"
							class="form-control">
					</div>
				</div>
				<div class="row pt-4">
					<div class="col">
						<button type="submit" class="btn btn-primary">Enviar</button>
					</div>
				</div>
			</form>
		</main>

		<jsp:include page="./footer.jsp"></jsp:include>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

</body>
</html>