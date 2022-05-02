<%-- 
    Document   : add
    Created on : 27/04/2022, 09:54:00 AM
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
        
        <h1>Agregar Persona</h1>
                <form action="Controlador">
                    Nombre:<br>
                    <input class="form-control" type="text" name="txtNom"><br>
                    Edad: <br>
                    <input class="form-control" type="text" name="txtEdad"><br>
                     E-mail: <br>
                    <input class="form-control" type="text" name="txtMail"><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                    <a href="Controlador?accion=listar">Regresar</a>
                </form>
    </body>
</html>
