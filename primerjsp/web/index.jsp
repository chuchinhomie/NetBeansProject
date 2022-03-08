<%-- 
    Document   : index
    Created on : 7/03/2022, 10:11:53 AM
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

        java.util.Date currentTime = new java.util.Date (); // Obtener la hora actual del sistema
                                 
        String S1 = new String("minúsculas convertidas en mayúsculas");       
        // Convertir a UpperCase    
        System.out.println(S1.toUpperCase()); 

//Resultado de una operaciona aritmetica
int num1 = 1;
int num2 = 3;
int result = 0;

result = num1 + num2;

 double valorDado =Math.floor( Math.random()*100);
                                 
				 
				%>
                    <h1><%=currentTime %></h1>
                    <h1><%= S1.toUpperCase() %></h1>
                    <h3><%= result %></h3>
                    <h4><%= valorDado %></h4>
                    
                    
                    
                   
                    
    </body>
</html>
