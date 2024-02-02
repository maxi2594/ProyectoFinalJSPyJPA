
package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
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


@WebServlet(name = "SvPaciente", urlPatterns = {"/SvPaciente"})
public class SvPaciente extends HttpServlet {

    Controladora controlLogoc = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        List<Paciente> lista = new ArrayList<Paciente>();
        lista = controlLogoc.traerPacientes();
        request.setAttribute("pacientes", lista);
        RequestDispatcher dispacher = request.getRequestDispatcher("verPacientes.jsp");
        dispacher.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        Paciente pacien = new Paciente();
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String dni = request.getParameter("dni");
        String direccion = request.getParameter("direccion");
        String telefono = request.getParameter("telefono");
        String tieneOs = request.getParameter("tieneOS");
        String tipoSangre = request.getParameter("tipoSangre");
        String fecha_nac = request.getParameter("fechanac");
        
        pacien.setNombre(nombre);
        pacien.setApellido(apellido);
        pacien.setDni(dni);
        pacien.setDireccion(direccion);
        pacien.setTelefono(telefono);
        pacien.setTiene_OS( (tieneOs != null)? true : false);
        pacien.setTipoSangre(tipoSangre);
        
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd", Locale.ENGLISH); 
        try {
            Date date = formatter.parse(fecha_nac);
            pacien.setFecha_nac(date);
        } catch (ParseException ex) {
            Logger.getLogger(SvPaciente.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        controlLogoc.crearPaciente( pacien );
        response.sendRedirect("index.jsp");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
