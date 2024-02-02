
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
import logica.Usuario;

@WebServlet(name = "SvUsuarios", urlPatterns = {"/SvUsuarios"})
public class SvUsuarios extends HttpServlet {

    Controladora controlLogica = new Controladora();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        
        listaUsuarios =  controlLogica.traerUsuarios();
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuarios", listaUsuarios);
        response.sendRedirect("verUsuarios.jsp");
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String nombre = request.getParameter("nombre");
        String contraseña = (String) request.getParameter("password");
        String rol = request.getParameter("rol");
       
        controlLogica.crearUsuario( nombre, contraseña, rol);
        
       response.sendRedirect("index.jsp");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
