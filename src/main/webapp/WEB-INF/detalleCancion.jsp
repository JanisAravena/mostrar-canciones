<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle Cancion</title>
</head>
<body>
	<h1>Detalle de cancion</h1>
	<p>ID: ${cancion.id}</p>
	<p>Titulo: ${cancion.titulo}</p>
	<p>Artista: ${cancion.artista}</p>
	<p>Album: ${cancion.album}</p>
	<p>Genero: ${cancion.genero}</p>
	<p>Idioma: ${cancion.idioma}</p>
	<p>Fecha de creacion: ${cancion.fechaCreacion}</p>
	<p>Fecha de actualizacion: ${cancion.fechaActualizacion}</p>
	<a href="/canciones">Volver a lista de canciones</a>
</body>
</html>
