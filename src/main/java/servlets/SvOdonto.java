
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Odontologo;


@WebServlet(name = "SvOdonto", urlPatterns = {"/SvOdonto"})
public class SvOdonto extends HttpServlet {
    
    Controladora contrologic = new Controladora();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        List<Odontologo> odontos = new ArrayList<Odontologo>();
        
        odontos = contrologic.traerOdontologos();
        
        HttpSession misession = request.getSession();
        misession.setAttribute("odontos", odontos);
        response.sendRedirect("verOdontos.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String dni = request.getParameter("dni");
        String direccion = request.getParameter("direccion");
        String telefono = request.getParameter("telefono");
        String especialidad = request.getParameter("especialidad");
        
        Odontologo odonto = new Odontologo();
        odonto.setNombre(nombre);
        odonto.setApellido(apellido);
        odonto.setDni(dni);
        odonto.setDireccion(direccion);
        odonto.setTelefono(telefono);
        odonto.setEspecialidad(especialidad);
        
        try {
         contrologic.crearOdontologo(odonto);
         response.sendRedirect("index.jsp");
        } catch (IOException e) {
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
