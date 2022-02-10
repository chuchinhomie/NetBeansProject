<%-- 
    Document   : index
    Created on : 8/02/2022, 11:58:31 AM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comentarios</title>
    </head>
    <body>
        <h2>Por favor ingresa tu comentario</h2>
        <form method="post" action="comentarios">
            Nombre:<input type="text" name="textName" id="idNombre">
            <br><br>
            Email:<input type="text" name="textMail" id="idMail">
            <br><br>
            Comentario:<input type="text" name="txtComment" id="idComment">
            <br><br>
            <td><input type="submit" name="btnSubmit" value="Enviar Datos" /></td>
        </form>
    </body>
</html>
