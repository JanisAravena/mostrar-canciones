<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Artistas</title>
</head>
<body>
	<h1>Lista de artistas</h1>
	<c:forEach var="artista" items="${listaArtistas}">
		<p>
			<a href="/artistas/detalle/${artista.id}">${artista.nombre} ${artista.apellido}</a>
		</p>
	</c:forEach>
	<a href="/artistas/formulario/agregar">Agregar artista</a>
	<a href="/canciones">Ir a canciones</a>
</body>
</html>
