
package servlets;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Usuario;


@WebServlet(name = "SvEditarUsuario", urlPatterns = {"/SvEditarUsuario"})
public class SvEditarUsuario extends HttpServlet {

    Controladora controlLogica = new Controladora();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        int id = Integer.parseInt( request.getParameter("id") );
        Usuario usu = controlLogica.traerUsuarioPorId(id);
        
        HttpSession session = request.getSession();
        session.setAttribute("usuario", usu);
        response.sendRedirect("editarUsuario.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        Usuario usu = new Usuario();
        usu.setId_usuario(Integer.parseInt(request.getParameter("id")));
        usu.setNombreUsuario(request.getParameter("nombre"));
        usu.setContra(request.getParameter("password"));
        usu.setRol(request.getParameter("rol"));
                
        try {
            controlLogica.editarUsuario(usu);
        } catch (Exception ex) {
            Logger.getLogger(SvEditarUsuario.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("SvUsuarios");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
