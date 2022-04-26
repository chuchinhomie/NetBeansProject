<%-- 
    Document   : index
    Created on : 26/04/2022, 12:17:03 PM
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
<form action="LoginController" method="post">
    USUARIO :<input type="text" name="username"> <br> <br>
    CONTRASEÑA :<input type="password" name="password"> <br> <br>
    <input type="submit" value="Login">
</form>

</body>
</html>
