<%-- 
    Document   : detalleCliente
    Created on : 2/04/2022, 01:10:03 PM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Dettalle de Cliente</h1>
        
        <b>Nombre</b>
        <%= request.getParameter("nombre")%>
        <br><br>
        <b>Apellidos</b>
        <%= request.getParameter("apellidos")%>
        <br><br>
        <b>Direccion</b>
        <%= request.getParameter("direccion")%>
        <br><br>
        <b>Codigo Postal</b>
        <%= request.getParameter("cp")%>
        <br><br>
        <b>Ciudad</b>
        <%= request.getParameter("ciudad")%>
        <br><br>
        <b>Estado</b>
        <%= request.getParameter("estado")%>
        <br><br>
        <b>Pais</b>
        <%= request.getParameter("pais")%>
        <br><br>
        <b>Telefono</b>
        <%= request.getParameter("telefono")%>
        <br><br>
        <b>Fecha de nacimiento</b>
        <%= request.getParameter("dob")%>
        <br><br>
        <b>Correo Electronico</b>
        <%= request.getParameter("email")%>
        <br><br>
        <b>Contraseña</b>
        <%= request.getParameter("psw")%>
        <br><br>
        <a href="altaCliente.jsp">Editar Informacion</a>
        <br><br>
        <a href="admin.html">Regresar a la Pagina Principal</a>
        <br><br>
                
    </body>
</html>
