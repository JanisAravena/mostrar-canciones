# Primera Core: Mostrar Canciones

## Rutas

### `/canciones`
**Método:** `desplegarCanciones()`

Devuelve una lista de objetos `Cancion` para ser enviada a la vista `canciones.jsp`. 
<img width="391" height="302" alt="image" src="https://github.com/user-attachments/assets/81cef92a-704c-48a1-87cf-12c6ec052c31" />

### `/canciones/detalle/{idCancion}`
**Método:** `desplegarDetalleCancion()`

Devuelve un objeto `Cancion` según el `idCancion` recibido para ser enviado a la vista `detalleCancion.jsp`.
<img width="522" height="472" alt="image" src="https://github.com/user-attachments/assets/b00506bc-0994-4027-8c61-85d1ff768377" />

# Segunda Core: Agregar Canciones

## Validaciones

- Título: mínimo 5 caracteres.
- Artista, Álbum, Género e Idioma: mínimo 3 caracteres.
<img width="547" height="377" alt="image" src="https://github.com/user-attachments/assets/c50ba9fc-519c-412c-b910-d44c7e780192" />

### `/canciones/formulario/agregar/{idCancion}`
**Método:** `formularioAgregarCancion()`

Muestra la vista `agregarCancion.jsp`.
<img width="477" height="372" alt="image" src="https://github.com/user-attachments/assets/8c28554a-93cf-4d33-8b93-cf9f794fb590" />


### `/canciones/procesa/agregar`
**Método:** `procesarAgregarCancion()`

Guarda la canción y redirige a `/canciones`. Si existen errores de validación, vuelve al formulario `agregarCancion.jsp`.
<img width="472" height="320" alt="image" src="https://github.com/user-attachments/assets/8b2fc6db-e183-4ef9-afb8-c36c402e303a" />

# Tercera Core: Actualizar Canción

## Servicio

**Método:** `actualizaCancion(Cancion)`

Actualiza una canción en la base de datos.
<img width="879" height="355" alt="image" src="https://github.com/user-attachments/assets/d106566c-a83a-4b2d-8454-19bd51838115" />


### `/canciones/formulario/editar/{idCancion}`
**Método:** `formularioEditarCancion()`

Muestra la vista `editarCancion.jsp` con los datos de la canción seleccionada.
<img width="456" height="392" alt="image" src="https://github.com/user-attachments/assets/6bee784c-1959-429d-8cf5-1a8419044236" />


### `/canciones/procesa/editar/{idCancion}`
**Método:** `procesarEditarCancion()`

Actualiza la canción y redirige a `/canciones`. Si existen errores de validación, vuelve al formulario `editarCancion.jsp`.
<img width="481" height="397" alt="image" src="https://github.com/user-attachments/assets/4e105a90-d4c7-4733-bda0-663fa0478aa0" />
<img width="455" height="315" alt="image" src="https://github.com/user-attachments/assets/96fda42e-b87b-4dd9-8bbc-c523cf7b6b92" />
<img width="935" height="322" alt="image" src="https://github.com/user-attachments/assets/a8d42d5c-76ad-4b9a-8561-3f40c54e2854" />


# Cuarta Core: Eliminar Canción

## Servicio

**Método:** `eliminaCancion(Long)`

Elimina una canción de la base de datos según su id.
<img width="987" height="221" alt="image" src="https://github.com/user-attachments/assets/7710275b-2909-41b8-89b6-22a96f7a9bf3" />

### `/canciones/eliminar/{idCancion}`
**Método:** `procesarEliminarCancion()`

Elimina la canción indicada y redirige a `/canciones`.

En `detalleCancion.jsp` se agregó un botón para eliminar la canción, el cual redirige a la ruta `/canciones/eliminar/{idCancion}`.
<img width="437" height="510" alt="image" src="https://github.com/user-attachments/assets/33fcaf46-e775-413b-823d-1cea1b294290" />
<img width="396" height="322" alt="image" src="https://github.com/user-attachments/assets/c84568f7-5902-4869-af93-1d42f1e95bce" />




