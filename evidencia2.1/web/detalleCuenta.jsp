<%-- 
    Document   : detalleCuenta
    Created on : 3/04/2022, 09:50:57 AM
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
        <h1>Detalle de Cuenta</h1>
        
        <b>Numero de Cuenta</b>
        <%= request.getParameter("no_cuenta")%>
        <br><br>
        <b>Numero de Cliente</b>
        <%= request.getParameter("no_cliente")%>
        <br><br>
        <b>Tipo de Cuenta</b>
        <%= request.getParameter("type_cuenta")%>
        <br><br>
        <b>Monto</b>
        <%= request.getParameter("monto")%>
        <br><br>
        
        <a href="altaCliente.jsp">Editar Informacion</a>
        <br><br>
        <a href="admin.html">Regresar a la Pagina Principal</a>
        
    </body>
</html>
