<%-- 
    Document   : factorial.jsp
    Created on : 02-nov-2022, 16:47:49
    Author     : antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "jBean.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Pasar un número a letra</title>
</head>
<body>
    <h1>Paso de un número a letra</h1>

    <!-- Formulario que solicita al usuario el número a usar en el cálculo -->
    <form action="NumLetras.jsp" method="get">
        <p>Número: <input type="text" name="numero">
        <input type="submit" value="Calcular"></p>        
    </form>

    <%
        // A través del objeto request se obtiene el valor pasado por el formulario
        String numeroGet = request.getParameter("numero");
        if(numeroGet!=null) {
            int numero=23;
            double valor=0;
            boolean error = false;
            Numero_Letras v_numero = new Numero_Letras();
            String cadena="";
            try {
                numero = Integer.valueOf(numeroGet);
                if(numero<1) {
                    error = true;
                } else {
                    valor = numero;
                    cadena = v_numero.Convertir(numeroGet, true);
                }
            } catch(NumberFormatException e) {
                error = true;
            }
            if(error) {
                out.println("<p>Debe indicar un número entero mayor que 0</p>");
            } else {
                // Mostrar el resultado en la página usando el objeto out
                out.println("<p>Resultado<br><br>El <b>"+numero + "</b> es en letra <b>" + cadena +"</b></p>");
            }
        }
        

    %>
    <br>
    <a href="index.html"><b>Volver al menu principal</b></a>
</body>
</html>        

