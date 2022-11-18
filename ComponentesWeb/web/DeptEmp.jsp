<%-- 
    Document   : factorial.jsp
    Created on : 02-nov-2022, 16:47:49
    Author     : antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Empleados por departamento</title>
</head>
<body>
    <h1>Empleados por departamento</h1>

    <!-- Formulario que solicita al usuario el número a usar en el cálculo -->
    <form action="DeptEmp.jsp" method="get">
        <p>Número: <input type="text" name="numero">
        <input type="submit" value="Empleados"></p>        
    </form>

    <%
        // A través del objeto request se obtiene el valor pasado por el formulario
        String numeroGet = request.getParameter("numero");
        if(numeroGet!=null) {
            int numero=0;
            boolean error = false;
            String cadena="";
            try {
                numero = Integer.valueOf(numeroGet);
                if(numero<1) {
                    error = true;
                } else {
                    
                //registro driver
                Class.forName("oracle.jdbc.OracleDriver");
                Connection conexion = DriverManager.getConnection("jdbc:oracle:thin:hr/hr@//localhost:1521/XE");
                Statement sentencia = conexion.createStatement();
                /* Buscar departamento */                           
                ResultSet Dept;
                Statement SenDept=conexion.createStatement();    
                String SqlDept;
                SqlDept = "select department_id, department_name, manager_id, location_id "
                        +  "from departments where department_id ="+numero;
                Dept = SenDept.executeQuery(SqlDept);
                if (Dept.next())
                    {
                    /* Llamar a empleados */
                    
                    cadena="SelectEmpDep.jsp?depar="+Dept.getString(1)+"&manager="+Dept.getString(3)+
                            "&locali="+Dept.getString(4)+"&nombre="+Dept.getString(2);
                    Dept.close();
                    SenDept.close();
                    conexion.close();
                    RequestDispatcher req = request.getRequestDispatcher(cadena);
    		    req.forward(request, response);
                    }
                    Dept.close();
                    SenDept.close();
                    conexion.close();                
                        }
            } catch(NumberFormatException e) {
                error = true;
            }
            if(error) {
                out.println("<p>El codigo del departamento es un valor entero mayor de cero</p>");
            } else {
                // Mostrar el resultado en la página usando el objeto out
                out.println("<p>No existe el departamento <b>"+numero +"</b></p>");
            }
        }
        

    %>
    <br>
    <a href="index.html"><b>Volver al menu principal</b></a>
</body>
</html>        

