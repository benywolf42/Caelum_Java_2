<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, br.com.caelum.agenda.dao.*, br.com.caelum.agenda.modelo.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
	table, th, td {
  border: 1px solid black;
}
</style>
<meta charset="UTF-8">
<title>Listar contatos</title>
</head>
<body>
	<table>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
		%>
			<tr>
				<th>Nome</th>
				<th>Email</th>
				<th>Endereço</th>
				<th>Data de Nascimento</th>
				<tr>
		<%
			for (Contato contato : contatos) {
		%> 
				<td><%=contato.getNome() %></td>
				<td><%=contato.getEmail() %></td>
				<td><%=contato.getEndereco() %></td>
				<td><%= new SimpleDateFormat("dd/MM/yyy").
				format(contato.getDataNascimento().getTime()) %>
			</tr>
		<%
		}
		%>
	</table>
</body>
</html>