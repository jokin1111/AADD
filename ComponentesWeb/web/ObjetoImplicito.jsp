<%-- 
    Document   : ObjetoImplicito
    Created on : 11-nov-2022, 20:30:03
    Author     : antonio
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
    <head>
        <title>Index JSP Page</title>
    </head>
    <body>

        <%-- out object example --%>

        <table border="1"; style="background-color:#ffffcc; width:30%" >
            <caption><h3>JSP Implicit object</h3></caption>
            <tr><td><b>Current Time</b></td>
            <td><% out.print(new Date()); %></td></tr>

            <%-- response object example --%>
            <%response.addCookie(new Cookie("Test","Value")); %>

            <%-- application object example --%>
            <tr><td><b>User context param value</b></td>
            <td><%=application.getInitParameter("User") %></td></tr>

            <%-- session object example --%>
            <tr><td><b>User Session ID</b></td>
            <td><%=session.getId() %></td></tr>

            <%-- pageContext object example --%>
            <% pageContext.setAttribute("Test", "Test Value"); %>
            <tr><td><b>PageContext attribute</b></td>
            <td>{Name="Test",Value="<%=pageContext.getAttribute("Test") %>"}</td></tr>

            <%-- page object example --%>
            <tr><td><b>Generated Servlet Name</b>:</td>
            <td><%=page.getClass().getName() %></td></tr>
    
            <%-- request object example --%>
            <tr><td><b>Request User-Agent</b></td>
            <td> <%=request.getHeader("User-Agent") %></td></tr>
        </table>
    </body>
</html>
