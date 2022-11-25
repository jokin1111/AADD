<%-- 
    Document   : estudiante
    Created on : 25-nov-2022, 17:09:50
    Author     : joaquin.antequera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>get and set properties example</title>
    </head>
    <body>
        <h1>get and set properties example</h1>
        
        <jsp:useBean id = "Student" class = "Student">
        <jsp:setProperty name = "Student" property= "firstName" value = "Zara"/>
        <jsp:setProperty name = "Student" property= "lastName" value = "Zara"/>
        <jsp:setProperty name = "Student" property= "age" value = "10"/>
        </jsp:useBean>
        
        <p></p>
        
        <p></p>
       
        <p></p>
        
    </body>
</html>
