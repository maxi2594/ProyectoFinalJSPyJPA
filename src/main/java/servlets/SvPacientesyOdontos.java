
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;
import logica.Odontologo;
import logica.Paciente;


@WebServlet(name = "SvPacientesyOdontos", urlPatterns = {"/SvPacientesyOdontos"})
public class SvPacientesyOdontos extends HttpServlet {
    
    Controladora controlLogic = new Controladora();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        List<Paciente> lstPacien = new ArrayList<>();
        List<Odontologo> lstOdontos = new ArrayList<>();
        lstPacien = controlLogic.traerPacientes();
        lstOdontos = controlLogic.traerOdontologos();
        request.setAttribute("lstPacien", lstPacien);
        request.setAttribute("lstOdontos", lstOdontos);
        RequestDispatcher dispacher = request.getRequestDispatcher("altaTurno.jsp");
        dispacher.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
