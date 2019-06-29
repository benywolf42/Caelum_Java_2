<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<style>
	table, th, td {
  border: 1px solid black;
}
</style>
<meta charset="UTF-8">
<title>Listar contatos usando JSTL</title>
</head>
<body>
	<c:import url="cabecalho.jsp"></c:import>
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />
	<table>
			<tr>
				<th>Nome</th>
				<th>Email</th>
				<th>Endereço</th>
				<th>Nascimento</th>
			</tr>
		<c:forEach var="contato" items="${dao.lista}" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'C0C0C0' : 'ffffff' }" >
				<td>${contato.nome}</td>
				<td>
					<c:choose>
					 	<c:when test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:when>
						<c:otherwise>
						sem email
						</c:otherwise>
					</c:choose>
				</td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/> </td>
			</tr>
		</c:forEach>
	</table>
	
	<c:import url="rodape.jsp"></c:import>
</body>
</html>