
package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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


@WebServlet(name = "SvEditarPaciente", urlPatterns = {"/SvEditarPaciente"})
public class SvEditarPaciente extends HttpServlet {
    
    Controladora controlLogic = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int id = Integer.parseInt(request.getParameter("id"));
        Paciente pacien = controlLogic.traerPaciente(id);
        request.setAttribute("pacien", pacien);
        RequestDispatcher dispacher = request.getRequestDispatcher("editarPaciente.jsp");
        dispacher.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        Paciente pacien = new Paciente();
        pacien.setId(Integer.parseInt(request.getParameter("id")));
        pacien.setNombre(request.getParameter("nombre"));
        pacien.setApellido(request.getParameter("apellido"));
        pacien.setDni(request.getParameter("dni"));
        pacien.setDireccion(request.getParameter("direccion"));
        pacien.setTelefono(request.getParameter("telefono"));
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd", Locale.ENGLISH); 
        try {
            Date date = (Date) formatter.parse(request.getParameter("fechaNac"));
            pacien.setFecha_nac(date);
        } catch (ParseException ex) {
            Logger.getLogger(SvPaciente.class.getName()).log(Level.SEVERE, null, ex);
        }
        pacien.setTiene_OS((request.getParameter("tieneOS") != null)? true : false);
        
        controlLogic.editarPaciente(pacien);
        response.sendRedirect("SvPaciente");
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
