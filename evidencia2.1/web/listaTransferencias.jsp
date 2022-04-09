<%-- 
    Document   : listaTransferencias
    Created on : 5/04/2022, 10:40:34 AM
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
        
        <h1>Lista de Transferencias</h1>
        
        <b>Numero de Cuenta</b>
        <%= request.getParameter("no_cuenta")%>
        <br><br>
        <b>Numero de Cuenta a depositar</b>
        <%= request.getParameter("no_depositar")%>
        <br><br>
        <b>Monto</b>
        <%= request.getParameter("monto")%>
        <br><br>
        <a href="transferencias.jsp">Editar Informacion</a>
        <br><br>
        <a href="success.html">Regresar a la Pagina Principal</a>
        <br><br>
        
        
    </body>
</html>
