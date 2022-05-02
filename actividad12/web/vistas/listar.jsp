<%-- 
    Document   : listar
    Created on : 27/04/2022, 09:53:54 AM
    Author     : R5 3400G
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
        <h1>Personas</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Edad</th>
                    <th>E-mail</th>
                    <th>ACCIONES</th>
                </tr>
            </thead>
            <%
                PersonaDAO dao=new PersonaDAO();
                    List<Persona>list=dao.listar();
                    Iterator<Persona>iter=list.iterator();
                    Persona per=null;
                    while(iter.hasNext()){
                        per=iter.next();
            
            %>
            <tbody>
                <tr>
                    <td><%= per.getId()%></td>
                    <td><%= per.getDni()%></td>
                    <td><%= per.getNom()%></td>
                    <td><%= per.getNom()%></td>
                    <td>
                        <a>Editar</a>
                        <a>Remover</a>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
