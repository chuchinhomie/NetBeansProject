/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author R5 3400G
 */
@WebServlet(name = "rfc", urlPatterns = {"/rfc"})
public class rfc extends HttpServlet {

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
            out.println("<title>Servlet rfc</title>");            
            out.println("</head>");
            out.println("<body>");

            String Nombre = request.getParameter("textName");
        String Apellido = request.getParameter("text1Apellido");
        String Apellido2 = request.getParameter("text2Apellido");
        String Año = request.getParameter("textAño");
        String Mes = request.getParameter("textMes");
        String Dia = request.getParameter("textDia");

       

String rfc;


rfc = Apellido.trim().substring(0,2);
rfc = rfc.concat(Apellido2.trim().substring(0,1));
rfc = rfc.concat(Nombre.trim().substring(0,1));
rfc = rfc.concat(Año.substring(2,4));
rfc = rfc.concat(Mes);
rfc = rfc.concat(Dia);

            out.println("<label>Tu Rfc es: "+rfc.toLowerCase()+"</label>");

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

PrintWriter out = response.getWriter();



            out.println("<html>");
            out.println("<head>");
            out.println("<title>Generador de RFC:</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("</body>");
            out.println("</html>");

        
}
}



