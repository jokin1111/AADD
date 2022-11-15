<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        Current time: <%= new java.util.Date() %> 
        <%! private int accessCount = 0; %>
        <% out.println("<br> "); %>
        <%
        double ran;
        accessCount = accessCount + 1;
        out.println("<br>Numero de accesos:"+accessCount+"<br>");
        ran = Math.random();
        out.println("Numero generado:"+ran+"<br>");
        if (ran < 0.5) { 
	out.println(" Ten un <B>buen</B> día "); 
	} else { 
	out.println(" No tendrás <B>un buen</B> día "); } 
        %>
        <br>
        <br>
        <br>
        <a href="index.html"><b>Volver a la página de inicio</b></a>
    </body>
</html>

