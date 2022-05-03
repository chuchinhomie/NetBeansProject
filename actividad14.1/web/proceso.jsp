<%-- 
    Document   : proceso
    Created on : 3/05/2022, 10:49:37 AM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body>
 
<%
   
   out.print("Gracias "+request.getParameter("nombre")+" "+request.getParameter("apellidoPa")+" "+request.getParameter("apellidoma"));
   out.print("<br/>");
   out.print("tienes una cita el dia "+request.getParameter("fecha"));
   out.print("<br/>");
   out.print("con servicio de "+request.getParameter("servicios"));
   out.print("<br/>");
   out.print("en el automovil "+request.getParameter("modelo")+" y placas "+request.getParameter("placas"));
   out.print("<br/>");
 %>
    </body>
</html>
