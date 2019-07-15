<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<body>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
	<div class="row d-flex align-items-center justify-content-center">
		<aside class="col-sm-4">
			<div class="card">
				<article class="card-body">
					<a href="cadastroUsuario.jsp" class="float-right btn btn-outline-primary">Cadastre-se</a>
					<h4 class="card-title mb-4 mt-1">Sign in</h4>
					<form action="autenticaUsuario" method="post">
						<div class="form-group">
							<label>Usuário</label> <input name="usuario" class="form-control"
								placeholder="Email" type="text">
						</div>
						<!-- form-group// -->
						<div class="form-group">
							<label>Senha</label> <input class="form-control" placeholder="******"
								type="password" name=hashSenha>
						</div>
						<!-- form-group// -->
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">
								Login</button>
						</div>
						<!-- form-group// -->
					</form>
				</article>
			</div>
			<!-- card.// -->





			<!-- 	<h3>Login</h3> -->
			<!-- 	<a href="cadastroUsuario.jsp">Cadastrar-se</a> -->
			<!-- 	<form action="autenticaUsuario" method="post"> -->
			<!-- 		<input type="text" placeholder="usuário" name="usuario" required> -->
			<!-- 		<input type="password" placeholder="senha" name="hashSenha" required> -->
			<!-- 		<button type="submit">Login</button>  -->
			<!-- 	</form> -->
</body>
</html>