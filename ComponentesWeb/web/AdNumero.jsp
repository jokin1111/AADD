<%-- 
    Document   : adivinar_numero
    Created on : 14-nov-2012, 17:40:39
    Author     : Antonio

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>




<!DOCTYPE html>
<%-- 
Variables:
    inicio.     0 Para pedir valor, 1, Para adivinar, 2 Valor adivinado
    contador.   contador para veces.
    numero.      Número Generado.

--%>

<html>
<head><title>Numero para adivinar</title></head>
<body bgcolor="white">
<font size=4>

    <%! int inicio = 0; %>
    <%! int contador = 0; %>
    <%! int numero = 0; %>
    

<%
     String ini = request.getParameter("inicio");
     if (ini !=null) inicio = Integer.valueOf(ini);
     String con = request.getParameter("contador");
     if (con !=null)contador = Integer.valueOf(contador);
     String num = request.getParameter("numero");
     if (num !=null)numero = Integer.valueOf(numero);
     String ad = request.getParameter("guess");
     int valor=0;
     if (ad !=null) valor = Integer.valueOf(ad);
     if (inicio==2){
        out.println("Enhorabuena, lo has adivinado.");
        out.println("Y justo despues de " + contador +" intentos.<p>");
        inicio =0;
        contador =0;%>
        Adivinado  <a href="AdNumero.jsp?inicio=0&contador=0">¿quieres jugar otra vez ?</a> <%
     }
        else if (inicio == 0) { 
        numero = Math.abs(new Random().nextInt() % 100) + 1;
        inicio = 1;
        out.println("Numero generado sin !"+numero);
        out.println("Bienvenido al juego de adivina un numero.<p>");
        out.println("Tienes que introducir un numero entre 1 y 100.<p>");%>
        <form action="AdNumero.jsp?inicio=1&contador=0" method=get>
        ¿Cual es el numero que piensas? <input type=text name=guess>
        <input type=submit value="Submit">
        </form>
<%      } 
        else {
            contador++;
            if (valor == numero){
               inicio = 2;
               out.println("Enhorabuena, lo has adivinado.");
               out.println("Y justo despues de " + contador +" intentos.<p>");
               inicio =0;
               contador =0;%>
               Adivinado  <a href="AdNumero.jsp?inicio=0&contador=0">¿quieres jugar otra vez ?</a> <%
           }
            else
            {
            out.println("Buen intento, pero no. El nuevo intento debe ser <b>");
                    if ( valor > numero) out.println("menor</b>.");
                    else out.println("mayor</b>.");
            out.println ("Tu has realizado "+contador+ " intentos"); 
            out.println(". Tienes que introducir un numero entre 1 y 100.<p>");%>
            <form action="AdNumero.jsp?inicio=1&contador=<%= contador%>" method="get">
            ¿Cual es el numero que piensas? <input type=text name=guess>
            <input type=submit value="Submit">
            </form>
<% } 
} %>
</font>
</body>
</html>
