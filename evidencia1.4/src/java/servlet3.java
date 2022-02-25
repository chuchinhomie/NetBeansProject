/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
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
@WebServlet(urlPatterns = {"/servlet3"})
public class servlet3 extends HttpServlet {

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
            out.println("<title>Servlet servlet3</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet servlet3 at " + request.getContextPath() + "</h1>");
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
        int price1 = 0;
        int price2 = 0;
        int price3 = 0;
        int price4 = 0;
        int price5 = 0;
        int totalprice = 0;

String username = "";

PrintWriter out = response.getWriter();
HttpSession session = request.getSession(true);
username = (String)session.getAttribute("user");

String counter = (String)session.getAttribute("counter");
int count = Integer.parseInt(counter);

for (int i =1; i<count-1; i++)
{
String sitems [] = new String[count-1];
sitems[i-1] = (String)session.getAttribute("c"+i);

if((sitems[i-1]).equals("c1"))
{
price1 = 250;
}

if((sitems[i-1]).equals("c2"))
{
price2 = 600;
}

if((sitems[i-1]).equals("c3"))
{
price3 = 666;
}

if((sitems[i-1]).equals("c4"))
{
price4 = 4500;
}

if((sitems[i-1]).equals("c5"))
{
price5 = 500;
}

}

totalprice = price1 + price2 + price3 + price4 + price5;

out.println("<html>");   
out.println("<head>");     
out.println("</head>");    
out.println("<body>");    
 out.println("<div class=\"container d-flex justify-content-center mt-5 mb-5\">");       
 out.println(" <div class=\"row g-3\">");  
   out.println("<div class=\"col-md-6\"> <span>"+username+" Tu total de pago</span>");     
   out.println("<div class=\"card\">");         
     out.println("<div class=\"accordion\" id=\"accordionExample\">");           
       out.println("<div class=\"card\">");             
          out.println("<div class=\"card-header p-0\" id=\"headingTwo\">");              
               out.println("<h2 class=\"mb-0\"> <button class=\"btn btn-light btn-block text-left collapsed p-3 rounded-0 border-bottom-custom\" type=\"button\" data-toggle=\"collapse\" data-target=\"#collapseTwo\" aria-expanded=\"false\" aria-controls=\"collapseTwo\">");             
                     out.println("<div class=\"d-flex align-items-center justify-content-between\"> <span>Paypal</span> <img src=\"https://i.imgur.com/7kQEsHU.png\" width=\"30\"> </div>");               
                             out.println(" </button> </h2>");  
                     out.println("</div>");   
                    out.println("<div id=\"collapseTwo\" class=\"collapse\" aria-labelledby=\"headingTwo\" data-parent=\"#accordionExample\">");    
                      out.println(" <div class=\"card-body\"> <input type=\"text\" class=\"form-control\" placeholder=\"Paypal email\"> </div>");     
                   out.println("</div>");     
                  out.println("</div>");  
              out.println("<div class=\"card\">");     
                  out.println(" <div class=\"card-header p-0\">");     
                     out.println("<h2 class=\"mb-0\"> <button class=\"btn btn-light btn-block text-left p-3 rounded-0\" data-toggle=\"collapse\" data-target=\"#collapseOne\" aria-expanded=\"true\" aria-controls=\"collapseOne\">");       
                            out.println(" <div class=\"d-flex align-items-center justify-content-between\"> <span>Tarjeta de Credito</span>");       
                               out.println("<div class=\"icons\"> <img src=\"https://i.imgur.com/2ISgYja.png\" width=\"30\"> <img src=\"https://i.imgur.com/W1vtnOV.png\" width=\"30\"> <img src=\"https://i.imgur.com/35tC99g.png\" width=\"30\"> <img src=\"https://i.imgur.com/2ISgYja.png\" width=\"30\"> </div>");         
                           out.println("</div>");         
                            out.println("</button> </h2>");    
                      out.println("</div>");  
                     out.println("<div id=\"collapseOne\" class=\"collapse show\" aria-labelledby=\"headingOne\" data-parent=\"#accordionExample\">");   
                       out.println("<div class=\"card-body payment-card-body\"> <span class=\"font-weight-normal card-text\">NO. de tarjeta</span>");     
                        out.println("<div class=\"input\"> <i class=\"fa fa-credit-card\"></i> <input type=\"text\" class=\"form-control\" placeholder=\"0000 0000 0000 0000\"> </div>");        
                       out.println("<div class=\"row mt-3 mb-3\">");         
                         out.println(" <div class=\"col-md-6\"> <span class=\"font-weight-normal card-text\">Fecha de Expiracion</span>");          
                          out.println("<div class=\"input\"> <i class=\"fa fa-calendar\"></i> <input type=\"text\" class=\"form-control\" placeholder=\"MM/YY\"> </div>");              
                         out.println(" </div>");          
                           out.println("<div class=\"col-md-6\"> <span class=\"font-weight-normal card-text\">CVC/CVV</span>");         
                             out.println("<div class=\"input\"> <i class=\"fa fa-lock\"></i> <input type=\"text\" class=\"form-control\" placeholder=\"000\"> </div>");           
                          out.println("</div>");          
                          out.println("</div> <span class=\"text-muted certificate-text\"><i class=\"fa fa-lock\"></i> Tu transaccion esta asegurada</span>");      
                      out.println(" </div>");     
                    out.println("</div>");    
                out.println("</div>");    
             out.println("</div>");   
          out.println("</div>");  
     out.println("</div>");   
     out.println("<div class=\"col-md-6\"> <span>Total de compra</span>");  
         out.println("<div class=\"card\">");   
                
            out.println(" <hr class=\"mt-0 line\">");   
           out.println("<div class=\"p-3 d-flex justify-content-between\">");     
          out.println("<div class=\"d-flex flex-column\"> <span>Hoy Pagas: (Peso Mexicano MXN)</span> </div> <span>"+totalprice+"</span>");          
       out.println("</div>");         
                
             out.println("<button id=\"botonpago\" onclick=\"location.href='contacto.html';\">Hacer Pago</button>");   
                
        out.println("</div>");    
       out.println("</div>"); 
   out.println("</div>"); 
out.println("</div>");
   out.println("</body>"); 
out.println("</html>");

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
