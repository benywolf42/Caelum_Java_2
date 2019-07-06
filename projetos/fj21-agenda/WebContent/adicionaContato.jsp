<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<!DOCTYPE html>
<html>
<head>
	<link href="css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
	<meta charset="UTF-8">
	<title>Adicionar contatos</title>
</head>
<body>
	<c:import url="cabecalho.jsp"></c:import>
	<form action="adicionaContato" method="POST">
		Nome:<br><input type="text" name="nomeContato" /><br>
		Email:<br><input type="text" name="email"/><br>
		Endereço:<br><input type="text" name="endereco"/><br>
		Data de Nascimento:<br><caelum:campoData id="dataNascimento"/><br><br>
		
		<input type="submit" value="Enviar" />
	</form>
	<c:import url="rodape.jsp"></c:import>
</body>
</html>