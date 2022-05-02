<%-- 
    Document   : edit
    Created on : 27/04/2022, 10:23:50 AM
    Author     : R5 3400G
--%>

<%@page import="model.Persona"%>
<%@page import="modelodao.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
              PersonaDAO dao=new PersonaDAO();
              int id=Integer.parseInt((String)request.getAttribute("idper"));
              Persona p=(Persona)dao.list(id);
          %>
          
          <h1>Modificar Persona</h1>
            <form action="Controlador">
                Nombre:<br>
                <input class="form-control" type="text" name="txtNom" value="<%= p.getDni()%>"><br>
                Edad: <br>
                <input class="form-control" type="text" name="txtEdad" value="<%= p.getNom()%>"><br>
                 E-mail: <br>
                <input class="form-control" type="text" name="txtMail" value="<%= p.getNom()%>"><br>
                
                
                <input type="hidden" name="txtid" value="<%= p.getId()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="Controlador?accion=listar">Regresar</a>
            </form>
          
    </body>
</html>
