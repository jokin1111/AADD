<%-- 
    Document   : ComprobarUSUARIO_pag4
    Created on : 28-ene-2019, 20:41:35
    Author     : dam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <%        
            try {
                int depar=0;
                int manager=0;
                int locali=0;
                
                //registro driver
                Class.forName("oracle.jdbc.OracleDriver");
                Connection conexion = DriverManager.getConnection("jdbc:oracle:thin:hr/hr@//localhost:1521/XE");
                Statement sentencia = conexion.createStatement();
                

           //     String sql = "select * from usuarios where usuario='" + usuario + "' and ppaso='" + pass + "'";
                String dep = request.getParameter("depar");
                if (dep !=null) depar = Integer.valueOf(dep);
                String man = request.getParameter("manager");
                if (man !=null) manager = Integer.valueOf(man);
                String loc = request.getParameter("locali");
                if (loc !=null) locali = Integer.valueOf(loc);
                String nom = request.getParameter("nombre");

                out.println("Departamento:  "+dep+"<br>");
                out.println("Nombre      :  "+nom+"<br>");
                out.println("Responsable :  "+man+"<br>");
                out.println("Localidad   :  "+loc+"<br>");
                        
                String sql = "select employee_id, first_name||' '||last_name, salary"
                        +    " from employees where department_id="+depar;
                int empleados = 0;
                ResultSet resul = sentencia.executeQuery(sql);
                out.println("<BR><B>TABLA DE EMPLEADOS DEL DEPARTAMENTO "+depar+"</B><BR><BR>"); 
                out.println("<TABLE BORDER=2>"); 
                out.println("<TR> <TD><b>NUMERO</B></TD><TD><b>NOMBRE</B></TD><TD><b>SALARIO</B></TD></TR>");
                
                while (resul.next()) { //usuario válido
                    empleados++;
                    out.println("<TR> <TD>");
                    out.print(resul.getString(1)+ " ");
                    out.println("</TD> <TD>");
                    out.print(resul.getString(2)+ " ");
                    out.println("</TD> <TD>");
                    out.println(resul.getString(3)+ "<br>");
                    out.println("</TD> </TR>");
                } 
                out.println("</TABLE><BR><BR>"); 
                if (empleados > 0)
                    out.println("Hay "+empleados+ " empleados en el departemento "+depar);
                else
                    out.println("No hay empleados en la tabla");
                resul.close();
                sentencia.close();
                conexion.close();

            } 
            catch (ClassNotFoundException cn) {
                cn.printStackTrace();
                                              } 
            catch (SQLException e) {
                out.println("<p>Ha ocurrido una excepcion:");
                out.println("<p>mensaje: " + e.getMessage());
                out.println("<p>sqlestado:" + e.getSQLState());
                out.println("<p>Cod erorr:" + e.getErrorCode());
                                    }

            
        %>


    </body>
</html>

