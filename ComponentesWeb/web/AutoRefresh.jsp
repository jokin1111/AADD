<%-- 
    Document   : AutoRefresh
    Created on : 11-nov-2022, 20:17:45
    Author     : antonio
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<html>
    <head>
        <title>Auto Refresh</title>
    </head>
    <body>
        <center>
            <form>
                <fieldset style="width:20%; background-color:#e6ffe6;">
                    <legend>Auto refresh</legend>
                    <h2>Auto Refresh Example</h2>
                    <%
                       // Set refresh, autoload time as 1 seconds
                       response.setIntHeader("Refresh", 10);
                       // Get current time
                       Calendar calendar = new GregorianCalendar();
                       String am_pm;
                       int hour = calendar.get(Calendar.HOUR);
                       int minute = calendar.get(Calendar.MINUTE);
                       int second = calendar.get(Calendar.SECOND);
                       if(calendar.get(Calendar.AM_PM) == 0)
                          am_pm = "AM";
                       else
                          am_pm = "PM";
                       String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
                       out.println("Crrent Time: " + CT + "\n");
                    %>
                </fieldset>
            </form>
        </center>
    </body>
</html>