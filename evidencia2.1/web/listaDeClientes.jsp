<%-- 
    Document   : detalleCuenta1
    Created on : 4/04/2022, 12:34:35 PM
    Author     : R5 3400G
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes</title>
    </head>
    <body>
        
        <h2>Lista de Clientes</h2>
        
       <table>
            <thead>
                <tr>
                    <th>Numero de Cuenta</th>
                    <th>Nombre</th>
                    <th>Ciudad</th>
                </tr>
            </thead>
            
            <tbody>
            <c:forEach items="${clientes}" var="clientes">
                <tr>
                    <td>${clientes.nombre}</td>
                    <td>${clientes.no_cuenta}</td>
                    <td>${clientes.ciudad}</td>
                </tr>
                </c:forEach>   
            </tbody>
        </table>
    </body>
</html>
