<%-- 
    Document   : FormEti
    Created on : 12-nov-2022, 9:42:00
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
        <h1>Formulario con etiquetas</h1>
        <form action="RecibirForm.jsp" target="_blank">

  <fieldset>

    <legend>Información personal</legend>

    <p><label>Nombre: <input type="text" name="nombre"></label></p>

    <p><label>Dirección: <input type="text" name="direccion"></label></p>

  </fieldset>

  <fieldset>

    <legend>Preferencias</legend>

    <p>

      <label><input type="checkbox" name="arte"> Arte</label><br>

      <label><input type="checkbox" name="television"> Televisión</label><br>

      <label><input type="checkbox" name="videojuegos"> Videojuegos</label><br>

      <label><input type="checkbox" name="deportes"> Deportes</label><br>

    </p>

  </fieldset>

  <input type="submit" value="Enviar">

</form>
        
        
        
    </body>
</html>
