<html>
    <body>
 
<form action="proceso.jsp" method="post">
    Modelo:
    <input type="text" name="modelo">
    Placas:
    <input type="text" name="placas">
    <br><br/>
    Nombre:
    <input type="text" name="nombre">
    <br><br/>
    Apellido Paterno:
    <input type="text" name="apellidoPa">
    <br><br/>
    Apellido Materno:
    <input type="text" name="apellidoMa">
     Email:
    <input type="text" name="email">
    <br><br/>
    Lada:
    <input type="text" name="lada">
    <br><br/>
    Telefono:
    <input type="text" name="telefono">
    <br> <br>
    Fecha:
    <input type="date" name="fecha">
    <br><br/>
    Hora:
    <input type="text" name="hora">
   <br> <br/>
    Color:
    <input type="text" name="color">
    <br> <br>
    Comentarios:
    <input type="text" name="comentarios">
 
   <br> <br/>
    Servicios:
    <select name="servicios">
      <option value="mtm_1">SERVICIO NUEVO
      <option value="mtm_2">SERVICIO PRINCIPAL
      <option value="mtm_3">SERVICIO 50.000 KILOMETROS
      <option value="mtm_4">LAVADO DE MOTOR
      <option value="mtm_5">SERVICIO COMPLETO
      <option value="mtm_6">SERVICIO MEDIO AÑO
      <option value="mtm_7">LAVADO Y ENCERADO
    </select>
    <br/>
 
    <p><input type="submit" value="Enviar"></p>
</form>
 
</body>
</html>