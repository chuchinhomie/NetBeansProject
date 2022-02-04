<%-- 
    Document   : result
    Created on : 3/02/2022, 04:54:28 PM
    Author     : R5 3400G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <body>
        <h1 align="center">Nuestra Recomendacion</h1>
        <p>
            <%
                List styles = (List)request.getAttribute("styles");
                Iterator it = styles.iterator();
                while (it.hasNext()) {
                    out.print("<br>Ver: " + it.next());
                }
            %>
    </body>
</html>
