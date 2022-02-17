<%-- 
    Document   : index
    Created on : 14/02/2022, 06:06:27 PM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adivina el Numero</title>
    </head>
    <body>
        <%
    HttpSession sesion=request.getSession();
    String message=(String)sesion.getAttribute("message");
    %>
    

<h1>Adivina el Numero</h1>
<h2>El servidor ha escogido un numero del 1 al 100, ingresa el numero que pienses que ha escogido: </h2>

<form action="juego" method="POST">
     <input type="text" name="number">    
   <input type = "submit" value = "submit">  
   <br>
 <h1 style="color: green; border: green;"><%= message %></h1>  
    
 
</form>
<br>
<form action="index.jsp" method="POST">
    <input type = "submit" value = "Obtener nuevo numero">
</form>


    </body>
</html>
