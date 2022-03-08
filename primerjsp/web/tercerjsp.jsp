<%-- 
    Document   : tercerjsp
    Created on : 7/03/2022, 10:59:11 AM
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
        
        <h1>Calculo Factorial</h1>
        <form action="tercerjsp.jsp" method="POST">
            Ingresa un numero: <input type="text" name="numero" id="numero">
            <input type="submit" value="Submit" name="enviarDato">
            <br><br>
            
        <% 
        
            if(request.getParameter("enviarDato")!= null){
                
            int n = Integer.parseInt(request.getParameter("numero"));
            
            double factorial = 1;
            for(double i = 1; i<=n; i++){
    factorial = factorial * i;
}
        out.println("El calculo factorial de "+n+"! es: "+factorial);
        
       
        }
            


        %>
        <br><br>
        <label>Ejecuciones de la aplicacion en esta sesion:
            <% out.println(com.contador.getCount()); %>
        </label>
        </form>
    </body>
</html>
