
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import logica.Responsable;


@WebServlet(name = "SvResponsable", urlPatterns = {"/SvResponsable"})
public class SvResponsable extends HttpServlet {

    Controladora controlLogic = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        List<Responsable> listaResp = new ArrayList<>();
        listaResp = controlLogic.traerResponsables();
        request.setAttribute("responsables", listaResp);
        RequestDispatcher dispacher = request.getRequestDispatcher("verResponsables.jsp");
        dispacher.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        Responsable respon = new Responsable();
        respon.setNombre(request.getParameter("nombre"));
        respon.setApellido(request.getParameter("apellido"));
        respon.setDni(request.getParameter("dni"));
        respon.setDireccion(request.getParameter("direccion"));
        respon.setTelefono(request.getParameter("telefono"));
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd", Locale.ENGLISH); 
        try {
            Date date = formatter.parse(request.getParameter("fechanac"));
            respon.setFecha_nac(date);
        } catch (ParseException ex) {
            Logger.getLogger(SvPaciente.class.getName()).log(Level.SEVERE, null, ex);
        }
        int idPaciente = Integer.parseInt(request.getParameter("id"));
        Paciente pacien = controlLogic.traerPaciente(idPaciente);
        pacien.setUnResponsable(respon);
        controlLogic.editarPaciente(pacien);
        response.sendRedirect("SvPaciente");
        
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
