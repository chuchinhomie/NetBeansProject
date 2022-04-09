<%-- 
    Document   : index
    Created on : 2/04/2022, 10:47:06 AM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>LOGIN</title>
</head>
<body>
BANCO MERCANTIL DE MEXICO<br> <br>
<form action="LoginController" method="post">
    USUARIO :<input type="text" name="username"> <br> <br>
    CONTRASEÑA :<input type="password" name="password"> <br> <br>
    <input type="submit" value="Login">
</form>

</body>
</html>
