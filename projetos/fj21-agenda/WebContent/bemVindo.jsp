<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Seja bem-vindo!</title>
</head>
<body>
	<% String msg="Bem-vindo à JSP!"; %>
	<h1>FJ21- Agenda Capítulo 6</h1>
	<% out.println(msg); %><br>
	<%= "java é foda" %>
	<% System.out.println("JSP no Terminal!"); %>
</body>
</html>