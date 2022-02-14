/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author R5 3400G
 */
@WebServlet(urlPatterns = {"/juego"})
public class juego extends HttpServlet {

static int PartidasG = 0;
static int PartidasP = 0;
static int PartidasE = 0;
static int Perdidas = 0;
static int Empatadas = 0;
static int Turno = 1;
static int Ganadas = 0;

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet juego</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet juego at " + request.getContextPath() + "</h1>");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
       int turnoJugador = 0;
String opcionServ = "", opcionJug = "", ganador = "";
String jugador;
String empezar;
jugador = request.getParameter("juegos");
int turnoServidor = randMove();
empezar = request.getParameter("comenzar");

if (empezar != null){

Turno = 1;
Empatadas = 0;
Ganadas = 0;
Perdidas = 0;
PartidasG = 0;
PartidasP = 0;
PartidasE = 0;
}
if (jugador == null){

Turno = 1;
Empatadas = 0;
Ganadas = 0;
Perdidas = 0;
PartidasG = 0;
PartidasP = 0;
PartidasE = 0;

} else {
    turnoJugador = Integer.parseInt(request.getParameter("juegos"));
}

if (turnoServidor == 1){
opcionServ = "Piedra";
}
if (turnoServidor == 2){
opcionServ = "Papel";
}
if (turnoServidor == 3){
opcionServ = "Tijeras";
}

if (turnoJugador == 1){
opcionServ = "Piedra";
}
if (turnoJugador == 2){
opcionServ = "Papel";
}
if (turnoJugador == 3){
opcionServ = "Tijeras";
}

if (turnoJugador == turnoServidor){
ganador = "Empatadas";
Empatadas++;
}else if (turnoJugador == 1) {
if (turnoServidor == 2){
ganador = "Servidor";
Perdidas++;
} else if (turnoServidor == 3) {
ganador = "Jugador";
Ganadas++;
}
} else if (turnoJugador == 2) {
if (turnoServidor == 1){
ganador = "Jugador";
Ganadas++;
}
} else if (turnoJugador == 2) {
if (turnoServidor == 1){
ganador = "Jugador";
Ganadas++;
} else if (turnoServidor == 3){
ganador = "Servidor";
Perdidas ++;
}
} else if (turnoJugador == 3) {
if (turnoServidor == 1){
ganador = "Servidor";
Perdidas++;
} else if (turnoServidor == 2) {
ganador = "Jugador";
Ganadas++;
}
}

request.setAttribute("Empatadas", Empatadas);
request.setAttribute("Ganadas", Ganadas);
request.setAttribute("Perdidas", Perdidas);
request.setAttribute("Turno", Turno);
request.setAttribute("PartidasG", PartidasG);
request.setAttribute("PartidasE", PartidasE);
request.setAttribute("PartidasP", PartidasP);
request.setAttribute("Servidor", opcionServ);
request.setAttribute("Jugador", opcionJug);
request.setAttribute("Ganador", ganador);

if (Turno < 5) {
Turno++;
} else {

if (Ganadas > Perdidas && Ganadas > Empatadas){
PartidasG++;
} else if (Empatadas > Ganadas && Empatadas > Perdidas){
PartidasE++;
}
Turno = 1;
Empatadas = 0;
Ganadas = 0;
Perdidas = 0; 
}

RequestDispatcher view = request.getRequestDispatcher("/resultado.jsp");
view.forward(request, response);

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

public static int randMove(){
int randomNum = (int) Math.floor(Math.random() * (3-1+1)+1);
return randomNum;
}


}
