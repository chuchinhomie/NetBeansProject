<%-- 
    Document   : transferencias
    Created on : 2/04/2022, 01:05:45 PM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transferencias</title>
    </head>
    <body>
        <h1>Transferencia</h1>
        <p>Ingrese los campos solicitados</p>
        <form action="listaTransferencias.jsp" method="POST">
    <label for="no_cuenta"><b>Numero de Cuenta</b></label>
    <input type="text" placeholder="Ingresa el Numero de Cuenta" name="no_cuenta" id="no_cuenta" required>
    <br> <br>
    <label for="no_depositar"><b>Numero de Cuenta a depositar</b></label>
    <input type="text" placeholder="Ingresa el Numero de Cuenta a depositar" name="no_depositar" id="no_depositar" required>
 <br> <br>
    <label for="monto"><b>Monto</b></label>
    <input type="text" placeholder="Ingresa el Monto" name="monto" id="monto" required>
     <br> <br>
     <button type="submit" class="btnTrans">Realizar Transferencia</button>
     <br>
        </form>
     <a href="success.html">Regresar a la Pagina Principal</a>
    </body>
</html>
