<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar Artista</title>
</head>
<body>
	<h1>Agregar un artista</h1>
	<form:form action="/artistas/procesa/agregar" method="post" modelAttribute="artista">
		<p>
			<form:label path="nombre">Nombre:</form:label>
			<form:input path="nombre"/>
			<form:errors path="nombre"/>
		</p>
		<p>
			<form:label path="apellido">Apellido:</form:label>
			<form:input path="apellido"/>
			<form:errors path="apellido"/>
		</p>
		<p>
			<form:label path="biografia">Biografia:</form:label>
			<form:input path="biografia"/>
			<form:errors path="biografia"/>
		</p>
		<input type="submit" value="Agregar"/>
	</form:form>
	<a href="/artistas">Volver a lista de artistas</a>
</body>
</html>
