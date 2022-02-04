<%-- 
    Document   : result
    Created on : 3/02/2022, 12:55:23 PM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <body>
        <h1 align="center">Seleccion de colores de texto y Fondo</h1>
        <form method="post" action="SelectBeer.do">
            
            Color:
            <select name="color" size="1">
                <option value="blue"> blue </option>
                <option value="green"> green </option>
                <option value="yellow"> yellow </option>
                <option value="pink"> pink </option>
            </select>
            Background:
             <select name="background" size="1">
                <option value="white"> blanco </option>
                <option value="black"> negro </option>
                <option value="red"> rojo </option>
                <option value="gray"> gris </option>
                
            </select>
                <input type="submit">
        </form>
        <p>
            <%
                out.print("<p style=\"color:"+request.getAttribute("color")+";\"> " + request.getAttribute("color") + "</p>");
                %>
                
                <%
                out.print("<p style=\"background-color:"+request.getAttribute("background")+";\"> " + request.getAttribute("background") + "</p>");
                %>
    </body>
</html>
