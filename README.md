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

