<%-- 
    Document   : factorial.jsp
    Created on : 02-nov-2022, 16:47:49
    Author     : antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Descomponer</title>
</head>
<body>
    <h1>Descomponer</h1>

    <!-- Formulario que solicita al usuario el número a usar en el cálculo -->
    <form action="Descomponer.jsp" method="get">
        <p>Número: <input type="text" name="numero">
        <input type="submit" value="Calcular"></p>        
    </form>

    <%
        // A través del objeto request se obtiene el valor pasado por el formulario
        String numeroGet = request.getParameter("numero");
        if(numeroGet!=null) {
            int numero=0;
            double factorial=1;
            boolean error = false;
            out.println("<div>El número descompuesto es: ");
            for (int i = 0; i < numeroGet.length(); i++) {
                    if (i == numeroGet.length() - 1){
                        out.println(numeroGet.charAt(i));
                    }else
                        out.println(numeroGet.charAt(i)+ ", ");
                }
            out.println("</div>");
        }
        // Uso del objeto session para contar las veces que se ejecuta la aplicación
        Integer contador = (Integer)session.getAttribute("contadorVisitas");
        Integer contapp = (Integer)application.getAttribute("contadorVisitasapp");
        Integer contpag = (Integer)request.getAttribute("contadorVisitasapp");
        

        //out.println("Valor de aplicacion"+application.getAttribute("contadorVisitasapp"));

        
        if(contapp!=null) {
            contapp = Integer.valueOf(contapp);
        } else {
            contapp = 0;
        }
        if(contador!=null) {
            contador = Integer.valueOf(contador);
        } else {
            contador = 0;
        }
        
        if(contapp!=0) {
            out.println("<p>Ejecuciones de la página en la aplicación: "+contapp+ "</p>");
        }
        
        if(contador!=0) {
            out.println("<p>Ejecuciones de la página en esta sesión: "+contador+ "</p>");
        }
        contador++;
        contapp++;
        session.setAttribute("contadorVisitas", contador);
        application.setAttribute("contadorVisitasapp", contapp);
    %>
    <br>
    <a href="index.html"><b>Volver al menu principal</b></a>
</body>
</html>        

