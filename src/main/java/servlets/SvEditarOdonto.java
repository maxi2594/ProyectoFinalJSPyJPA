/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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
import logica.Controladora;
import logica.Odontologo;


@WebServlet(name = "SvEditarOdonto", urlPatterns = {"/SvEditarOdonto"})
public class SvEditarOdonto extends HttpServlet {

    Controladora controlLogic = new Controladora();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int id = Integer.parseInt(request.getParameter("id"));
        Odontologo odonto = controlLogic.traerOdontologo(id);
        request.setAttribute("odonto", odonto);
                //String errorMsg=(String)request.getAttribute("ErrorMessage");
        RequestDispatcher dispatcher =  request.getRequestDispatcher("editOdonto.jsp");
        dispatcher.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
            Odontologo odonto = new Odontologo();
            odonto.setId(Integer.parseInt(request.getParameter("id")));
            odonto.setNombre(request.getParameter("nombre"));
            odonto.setApellido(request.getParameter("apellido"));
            odonto.setDni(request.getParameter("dni"));
            odonto.setDireccion(request.getParameter("direccion"));
            odonto.setTelefono(request.getParameter("telefono"));
            
            controlLogic.editarOdontologo(odonto);
            response.sendRedirect("SvOdonto");
        } catch (Exception ex) {
            Logger.getLogger(SvEditarOdonto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
