
package logica;

import java.util.List;
import persistencia.ControladoraPersistencia;
import persistencia.exceptions.NonexistentEntityException;


public class Controladora {
    
    ControladoraPersistencia controlPersis = null;

    public Controladora() {
        controlPersis = new ControladoraPersistencia();
    }
     
    
    
    public void crearUsuario( String nombre, String contraseña, String rol){
        Usuario usu = new Usuario();
        usu.setNombreUsuario(nombre);
        usu.setContra(contraseña);
        usu.setRol(rol);
        controlPersis.crearUsuario(usu);
    }

    public List<Usuario> traerUsuarios() {
        return controlPersis.traerUsuarios();
    }

    public Usuario traerUsuarioPorId(int id) {
        return controlPersis.traerUsuarioPorId(id);
    }

    public void editarUsuario(Usuario usu) throws Exception {
        controlPersis.editarUsuario(usu);
    }

    public void eliminarUsuario(int id) {
        controlPersis.elimiarUsuario(id);
    }
    
    public Usuario traerUsuarioPorUseName(String user) throws Exception{
        return controlPersis.traerUsuarioPorUserName(user);
    }

    public void crearOdontologo(Odontologo odonto) {
        controlPersis.crearOdontologo(odonto);
    }

    public List<Odontologo> traerOdontologos() {
        return controlPersis.traerOdontologos();
    }

    public Odontologo traerOdontologo(int id) {
        return controlPersis.traerOdontologo(id);
    }

    public void editarOdontologo(Odontologo odonto) throws Exception {
        controlPersis.editarOdontologo(odonto);
    }

    public void eliminarOdontologo(int id) throws NonexistentEntityException {
        controlPersis.eliminarOdontologo(id);
    }

    public List<Paciente> traerPacientes() {
        return controlPersis.traerPacientes();
    }

    public void crearPaciente(Paciente pacien) {
        controlPersis.crearPaciente(pacien);
    }

    public void editarPaciente(Paciente pacien) {
        controlPersis.editarPaciente(pacien);
    }

    public Paciente traerPaciente(int id) {
        return controlPersis.traerPaciente(id);
    }

    public void eliminarPaciente(int id) throws NonexistentEntityException {
        controlPersis.eliminarPaciente(id);
    }

    public void crearResponsable(Responsable respon) {
        controlPersis.crearResponsable(respon);
    }

    public List<Responsable> traerResponsables() {
        return controlPersis.traerResponsables();
    }

    public void crearTurno(Turno turno) {
        controlPersis.crearTurno(turno);
    }

    public List<Turno> traerTurnos() {
        return controlPersis.traerTurnos();
    }

    
}
