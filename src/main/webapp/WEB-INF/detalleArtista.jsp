<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle Artista</title>
</head>
<body>
	<h1>Detalle de artista</h1>
	<p>ID: ${artista.id}</p>
	<p>Nombre: ${artista.nombre}</p>
	<p>Apellido: ${artista.apellido}</p>
	<p>Biografia: ${artista.biografia}</p>
	<p>Fecha de creacion: ${artista.fechaCreacion}</p>
	<p>Fecha de actualizacion: ${artista.fechaActualizacion}</p>
	<h2>Canciones</h2>
	<c:forEach var="cancion" items="${artista.canciones}">
		<p>${cancion.titulo}</p>
	</c:forEach>
	<a href="/artistas">Volver a lista de artistas</a>
</body>
</html>
