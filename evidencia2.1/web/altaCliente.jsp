<%-- 
    Document   : altaCliente
    Created on : 2/04/2022, 01:03:24 PM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <h1>ALTA DE CLIENTE</h1>
    <p>Por favor llene los campos solicitados </p>
    </head>
    <body>
        
    <hr>
    <form action="detalleCliente.jsp" method="POST">
        
    <label for="nombre"><b>Nombre</b></label>
    <input type="text" placeholder="Ingresa tu nombre" name="nombre" id="nombre" required>
    <br> <br>
    <label for="apellidos"><b>Apellidos</b></label>
    <input type="text" placeholder="Ingresa tus apellidos" name="apellidos" id="apellidos" required>
 <br> <br>
    <label for="direccion"><b>Direccion</b></label>
    <input type="text" placeholder="Ingresa tu direccion" name="direccion" id="direccion" required>
    <br> <br> 
    <label for="cp"><b>Codigo Postal</b></label>
    <input type="text" placeholder="Ingresa tu Codigo Postal" name="cp" id="cp" required>
     <br> <br>
    <label for="ciudad"><b>Ciudad</b></label>
    <input type="text" placeholder="Ingresa tu Ciudad" name="ciudad" id="ciudad" required>
     <br> <br>
    <label for="estado"><b>Estado</b></label>
    <input type="text" placeholder="Ingresa tu estado" name="estado" id="estado" required>
     <br> <br>
    <label for="pais"><b>Pais</b></label>
    <input type="text" placeholder="Ingresa tu Pais" name="pais" id="pais" required>
     <br> <br>
    <label for="telefono"><b>Telefono</b></label>
    <input type="text" placeholder="Ingresa tu telefono" name="telefono" id="telefono" required>
     <br> <br>
    <label for="dob"><b>Fecha de Nacimiento</b></label>
    <input type="date" name="dob" id="dob" required>
     <br> <br>
    <label for="email"><b>Correo Electronico</b></label>
    <input type="text" placeholder="Ingresa tu correo" name="email" id="email" required>
 <br> <br>
   <label for="psw"><b>Contraseña</b></label>
    <input type="password" placeholder="Ingresa tu contraseña" name="psw" id="psw" required>
    <hr>
 <br> <br>
 <input type="submit" value="Submit"/> 
  </div>
</form>
    
    <a href="success.html">Regresar a la Pagina Principal</a>
    </body>
</html>
