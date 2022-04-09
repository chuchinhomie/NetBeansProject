<%-- 
    Document   : altaCuenta
    Created on : 2/04/2022, 01:04:49 PM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <h1>ALTA DE CUENTA</h1>
    <p>Por favor llene los campos solicitados </p>
    </head>
    <body>
        <form action="detalleCuenta.jsp" method="GET">
    <label for="no_cuenta"><b>Numero de Cuenta</b></label>
    <input type="text" placeholder="Ingresa el Numero de Cuenta" name="no_cuenta" id="no_cuenta" required>
    <br> <br>
    <label for="no_cliente"><b>Numero de Cliente</b></label>
    <input type="text" placeholder="Ingresa el Numero de Cliente" name="no_cliente" id="no_cliente" required>
 <br> <br>
    <label for="type_cuenta"><b>Tipo de Cuenta</b></label>
    <input type="type_cuenta" placeholder="Ingresa el Tipo de Cuenta" name="type_cuenta" id="type_cuenta" required>
    <br> <br> 
    <label for="monto"><b>Monto</b></label>
    <input type="text" placeholder="Ingresa el Monto" name="monto" id="monto" required>
     <br> <br>
     <button type="submit" class="saveBtn">Guardar</button>
     <br>
        </form>
     <a href="success.html">Regresar a la Pagina Principal</a>
    </body>
</html>
