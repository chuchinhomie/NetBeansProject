<%-- 
    Document   : segundojsp
    Created on : 7/03/2022, 10:30:41 AM
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
        
        <% 
        
double factorial = 1;
// El número elegido para el factorial es el 30
double numero=30;
while ( numero!=0) {
 factorial=factorial*numero; numero--;
 
 
 
}
out.println("El factorial de 30 es: "+factorial);

        
        %>
        <h1><%= factorial %></h1>
        
        
    </body>
</html>
