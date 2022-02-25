/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author R5 3400G
 */
@WebServlet(urlPatterns = {"/servlet1"})
public class servlet1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet servlet1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servlet1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

String username = request.getParameter("txtNombre");
String password = request.getParameter("txtPass");

int counter = 0;

PrintWriter out = response.getWriter();
response.setContentType("text/html");

if(username.equals("Juan")&& password.equals("123")){

out.println(username + " Bienvenido a LibroShop!");
counter = 0;
HttpSession session = request.getSession(true);
session.setAttribute("user",username);

}
else {

counter = 1;
out.println("Usuario Invalido");

}
if(counter == 0){

out.println("<!DOCTYPE html>");
            out.println("<html>");
out.println("<head>");
            out.println("<title> Libro Shop </title>");
out.println("</head>");
            out.println("<body>");
            out.println("<form action=servlet2 method=post>");
out.println("<center>");
out.println("<h1>Stock del Dia</h1>");

            out.println("<table width=500>");

out.println("<tr> <td>Num. Producto </td> <td> Nombre Libro </td> <td>Foto Libro </td> <td> Precio (MXN)</td> <td> Comprar </td> </tr>");
out.println("<tr> <td>1</td> <td> Tokio Blues </td> <td> <img src=./images/Libro1.jpg alt='' border=3 height=100 width=100></img> </td> <td> $250.00 </td> <td> <input type=checkbox name=c1 value=tokioblues> </td> </tr>");
out.println("<tr> <td>2</td> <td> Sopa de Miso </td> <td> <img src=./images/Libro4.jpg alt='' border=3 height=100 width=100></img> </td> <td> $600.00 </td> <td>  <input type=checkbox name=c2 value=sopademiso> </td> </tr>");
out.println("<tr> <td>3</td> <td> La Biblia </td> <td> <img src=./images/Libro3.jpg alt='' border=3 height=100 width=100></img> </td> <td> $666.00 </td> <td> <input type=checkbox name=c3 value=biblia> </td> </tr>");
out.println("<tr> <td>4</td> <td> Harry Potter </td> <td> <img src=./images/Libro2.jpg alt='' border=3 height=100 width=100></img> </td> <td> $4500.00 </td> <td> <input type=checkbox name=c4 value=harrypotter> </td> </tr>");
out.println("<tr> <td>5</td> <td> Azul casi transparente </td> <td> <img src=./images/Libro5.jpg alt='' border=3 height=100 width=100></img> </td> <td> $500.00 </td>  <td> <input type=checkbox name=c5 value=azulcasi> </td> </tr>");
out.println("</table>");
out.println("<p align=center>Presiona agregar para ver tu carrito</p>");
out.println("<input type=submit size=50 value=Agregar a Carrito>");
out.println("</center>");






            out.println("</body>");
            out.println("</html>");

}
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
