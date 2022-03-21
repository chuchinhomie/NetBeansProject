<%-- 
    Document   : index
    Created on : 14/03/2022, 10:12:16 PM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1 align="center"> Lista de Empleados </h1>
        <table align="center">
            <tr>
                <td align="center" ><b>ID</b></td>
                <td align="center" ><b>Name</b></td>
                <td align="center" ><b>Role</b></td>
            </tr>
            <c:forTokens items="${empleados}" delims="-" var="print">
                <tr align="center">
                <c:forTokens items="${myToken}" delims="," var="print">
                    <td align="center"><c:out value="${print}"/> </td>
                </c:forTokens>
            </tr> 
            </c:forTokens>
    </body>
</html>
