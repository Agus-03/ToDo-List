# Estructura del Proyecto ToDo-List

Este documento describe la estructura del proyecto y la función de cada archivo, útil para debugging, testing y CI/CD.

## Raíz del proyecto

- **app.js**  
  Servidor principal de Express.  
  Define rutas, conexión a MongoDB, modelos y renderizado EJS.

- **package.json**  
  Define dependencias, scripts y configuración del proyecto.

- **date.js**  
  Funciones utilitarias para obtener fecha en formatos usados por las vistas.

## Carpetas principales

### `/views`
Contiene las vistas EJS utilizadas por Express para renderizar HTML dinámico.

Ejemplos:
- `list.ejs`
- `header.ejs`
- `footer.ejs`
- `about.ejs`

### `/public`
Archivos estáticos:
- CSS
- imágenes
- JS del cliente

Esto se sirve con `express.static("public")`.

### `/docs`
Documentación técnica del proyecto.

Incluye:
- estructura.md
- tp-integrador.md

## Modelos y Base de Datos

La app utiliza MongoDB local: `mongodb://localhost:27017/listItemDB`


Modelos definidos en `app.js`:
- `Item(name: String)`
- `List(name: String, listItems: [Item])`

Estos modelos se usan para listas principales y listas personalizadas.


