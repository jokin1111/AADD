<%-- 
    Document   : formulario
    Created on : 02-nov-2022, 11:50:34
    Author     : antonio
<%@page contentType="text/html" pageEncoding="UTF-8"%>

--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Guru Registration Form</title>
</head>
<body>
Fecha actual: <%= new java.util.Date() %> 
<br>
<h1>Datos de Usuario</h1>
<form action="comprobar.jsp" method="post">
			<table style="with: 50%">
				<tr>
					<td>Nombre</td>
					<td><input type="text" name="first_name" /></td>
				</tr>
				<tr>
					<td>Apellidos</td>
					<td><input type="text" name="last_name" /></td>
				</tr>
				<tr>
					<td>Usuario</td>
					<td><input type="text" name="username" /></td>
				</tr>
					<tr>
					<td>Contraseña</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Dirección</td>
					<td><input type="text" name="address" /></td>
				</tr>
				<tr>
					<td>Teléfono</td>
					<td><input type="text" name="contact" /></td>
				</tr></table>
			<input type="submit" value="Submit" /></form>
</body>
</html>
