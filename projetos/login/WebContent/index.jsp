<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
	.btn:hover{
		background-color: green;
		color: #fff;
	}
	
	.btn{
		background-color: #28a745;
		color: #fff;
	}
	
	.exemplo{
			height: 80vh; 
		  display: flex; 
		  align-items: center; 
		  justify-content: center;
	}
	
</style>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<body>
<%@ include file="header.html" %>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
	<div class="row d-flex justify-content-center exemplo">
		<aside class="col-sm-4">
			<div class="card">
				<article class="card-body">
					<a href="cadastroUsuario.jsp" class="float-right btn border-success">Cadastre-se</a>
					<h4 class="card-title mb-4 mt-1">Login</h4>
					<form action="autenticaUsuario" method="post">
						<div class="form-group">
							<label>Usu�rio</label> <input name="usuario" class="form-control"
								placeholder="Email" type="text">
						</div>
						<!-- form-group// -->
						<div class="form-group">
							<label>Senha</label> <input class="form-control" placeholder="******"
								type="password" name=hashSenha>
						</div>
						<!-- form-group// -->
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block bg-success text-white border-success">
								Login</button>
						</div>
						<!-- form-group// -->
					</form>
				</article>
			</div>
	</div>
<%@ include file="footer.html" %>
</body>
</html>