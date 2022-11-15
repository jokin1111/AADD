<%-- 
    Document   : FormFile
    Created on : 15-nov-2022, 16:55:14
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
<form action="Formularios.html" method="post" enctype="multipart/form-data">

  <p><label>Archivo: <input type="file" name="archivo"></label> <input type="submit" value="Enviar datos"></p>

</form>
    </body>
</html>
