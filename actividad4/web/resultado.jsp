<%-- 
    Document   : resultado
    Created on : 10/02/2022, 10:54:34 AM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Piedra, papel o tijeras</title>
    </head>
    <body>
        <table border="1" width="22%">
            <thead>
                <tr>
                    <th> </th>
                    <th>Cliente</th>
                    <th>Servidor</th>
                </tr>
            </thead>
            <tbody>
                
                <tr>
                    <th>Juega</th>
                    <td><%=request.getAttribute("Jugador")%></td>
                    <td><%=request.getAttribute("Servidor")%></td>
                </tr>
                
                <tr>
                    <th>Ganador Jugada</th>
                    <td colspan="2"><%=request.getAttribute("Ganador")%></td>
                </tr>
                
                <tr>
                    <th>Jugadas Ganadas</th>
                    <td><%=request.getAttribute("Ganadas")%></td>
                    <td><%=request.getAttribute("Perdidas")%></td>
                </tr>
                
                <tr>
                    <th>Jugadas Empatadas</th>
                    <td colspan="2"><%=request.getAttribute("Empatadas")%></td>
                </tr>
                
                <tr>
                    <th>Partidas Ganadas</th>
                    <td><%=request.getAttribute("PartidasG")%></td>
                    <td><%=request.getAttribute("PartidasP")%></td>
                </tr>
                
                <tr>
                    <th>Partidas Empatadas</th>
                    <td colspan="2"><%=request.getAttribute("PartidasE")%></td>
                </tr>
            </tbody>
        </table>
                <br><br>
                <form method="post" action="juego">
                    <input type="radio" name="juegos" value="1" checked="checked"/>Piedra
                    <input type="radio" name="juegos" value="2" />Papel 
                    <input type="radio" name="juegos" value="3" />Tijeras
                    <br><br>
            <input type="submit">
                </form>
                <br><br>
                 </form>
        <br><br>
        <form action="juego" method="post">
            <a type="button" href="index.html" name="Comenzar">Volver a empezar</a>
            <br>
        </form>
    </body>
</html>
