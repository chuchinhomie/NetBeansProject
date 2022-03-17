<%-- 
    Document   : index
    Created on : 8/03/2022, 02:26:10 AM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Actividad 7</title>
       
    </head>
    <body>
       <table>
<tbody>
<tr><th>ID</th><th>Nombre</th><th>Rol</th></tr>

<c:forEach items="${requestScope.empList}" var="emp">
    
<tr><td><c:out value="${emp.id}"></c:out></td>

<td><c:out value="${emp.name}"></c:out></td>
        
<td><c:out value="${emp.role}"></c:out></td></tr>
        
</c:forEach>

</tbody>

</table>

<br><br>


    </body>
</html>