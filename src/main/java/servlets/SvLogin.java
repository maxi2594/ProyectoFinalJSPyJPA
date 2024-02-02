
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Usuario;


@WebServlet(name = "SvLogin", urlPatterns = {"/SvLogin"})
public class SvLogin extends HttpServlet {

    Controladora controlLogic = new Controladora();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String user = request.getParameter("user");
        String password = request.getParameter("contrasenia");
        
        try {
            Usuario usu = controlLogic.traerUsuarioPorUseName(user);
            if (usu.getContra().equals(password)) {
                HttpSession misesion = request.getSession(true);
                misesion.setAttribute("user", usu);
                response.sendRedirect("index.jsp");   
            }else{   
                request.setAttribute("ErrorMessage", "contraseña invalida");
                //String errorMsg=(String)request.getAttribute("ErrorMessage");
                RequestDispatcher dispatcher =  request.getRequestDispatcher("logIn.jsp");
                dispatcher.forward(request, response);
            }
            
        } catch (Exception ex) {
        }
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
