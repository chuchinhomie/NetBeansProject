<%-- 
    Document   : index
    Created on : 3/03/2022, 03:47:52 AM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAGINA DE EVENTOS</title>
    </head>
    <body>
        <h2>Generador de RFC</h2>
        <h3>Ingresa tus datos: </h3>
        <form action="rfc">
        
            Nombre:<input type="text" name="textName" id="idNombre">
            <br><br>
            Primer Apellido:<input type="text" name="text1Apellido" id="idApellido">
            <br><br>
            Segundo Apellido:<input type="text" name="text2Apellido" id="idApellido2">
            <br><br>
            Año:<input type="text" name="textAño" id="idAño">
            <br><br>
            Mes:<input type="text" name="textMes" id="idMes">
            <br><br>
            Dia:<input type="text" name="textDia" id="idDia">
            <br><br>
            
            <td><input type="submit" name="btnSubmit" value="Enviar Datos" /></td>
            
            </form>
    </body>
</html>
