<%-- 
    Document   : FormBot
    Created on : 15-nov-2022, 13:50:10
    Author     : antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="Formularios.html" method="get">

  <p><label>Nombre completo: <input type="text" name="nombrecompleto"></label></p>

  <p>Género:

    <label><input type="radio" name="genero" value="masculino"> Masculino</label>

    <label><input type="radio" name="genero" value="femenino"> Femenino</label>

  </p>

  <p><label>Dirección: <input type="text" name="direccion"></label></p>

  <p>Intereses:

    <label><input type="checkbox" name="libros"> Libros</label>

    <label><input type="checkbox" name="peliculas"> Películas</label>

    <label><input type="checkbox" name="videojuegos"> Videojuegos</label>

  </p>

  <p><input type="submit" value="Enviar datos"> <input type="reset" value="Restaurar formulario"></p>

</form>
    </body>
</html>
