<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Cancion</title>
</head>
<body>
	<h1>Editar una cancion</h1>
	<form:form action="/canciones/procesa/editar/${cancion.id}" method="put" modelAttribute="cancion">
		<form:hidden path="id"/>
		<p>
			<form:label path="titulo">Titulo:</form:label>
			<form:input path="titulo"/>
			<form:errors path="titulo"/>
		</p>
		<p>
			<form:label path="artista">Artista:</form:label>
			<form:input path="artista"/>
			<form:errors path="artista"/>
		</p>
		<p>
			<form:label path="album">Album:</form:label>
			<form:input path="album"/>
			<form:errors path="album"/>
		</p>
		<p>
			<form:label path="genero">Genero:</form:label>
			<form:input path="genero"/>
			<form:errors path="genero"/>
		</p>
		<p>
			<form:label path="idioma">Idioma:</form:label>
			<form:input path="idioma"/>
			<form:errors path="idioma"/>
		</p>
		<input type="submit" value="Actualizar"/>
	</form:form>
	<a href="/canciones">Volver a lista de canciones</a>
</body>
</html>
