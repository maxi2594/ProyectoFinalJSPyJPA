
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;
import logica.Paciente;
import logica.Turno;


@WebServlet(name = "SvTurno", urlPatterns = {"/SvTurno"})
public class SvTurno extends HttpServlet {

    Controladora controlLogic = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        List<Turno> lstTurnos = controlLogic.traerTurnos();
        request.setAttribute("listaTurnos", lstTurnos);
        RequestDispatcher dispacher = request.getRequestDispatcher("verTurnos.jsp");
        dispacher.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
            
            Turno turno = new Turno();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-DD");
            Date fecha = formatter.parse(request.getParameter("fecha"));
            System.out.println(fecha.toString());
            String horai = request.getParameter("hora_inicio");
            String horaf = request.getParameter("hora_fin");
            int idPacien = Integer.parseInt(request.getParameter("pacienteId"));
            int idOdon = Integer.parseInt(request.getParameter("odontoId"));
            
            turno.setFechaTurno(fecha);
            turno.setHora_inicio(horai);
            turno.setHora_fin(horaf);
            turno.setPacien(controlLogic.traerPaciente(idPacien));
            turno.setOdonto(controlLogic.traerOdontologo(idOdon));
            
            controlLogic.crearTurno(turno);
            response.sendRedirect("index.jsp");
            
            
        } catch (ParseException ex) {
            Logger.getLogger(SvTurno.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
