
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Usuario;
import logica.Odontologo;
import logica.Paciente;
import logica.Responsable;
import logica.Turno;
import persistencia.exceptions.NonexistentEntityException;


public class ControladoraPersistencia {
    
    HorarioJpaController horarioJPA = new HorarioJpaController();
    OdontologoJpaController odontoJPA = new OdontologoJpaController();
    PacienteJpaController pacienteJPA = new PacienteJpaController();
    PersonaJpaController personaJPA = new PersonaJpaController();
    ResponsableJpaController responsableJPA = new ResponsableJpaController();
    SecretarioJpaController secretarioJPA = new SecretarioJpaController();
    TurnoJpaController turnoJPA = new TurnoJpaController();
    UsuarioJpaController usuarioJPA = new UsuarioJpaController();

    public ControladoraPersistencia() {
        
    }

    public void crearUsuario(Usuario usu) {
        usuarioJPA.create(usu);
    }

    public List<Usuario> traerUsuarios() {
       return usuarioJPA.findUsuarioEntities();
    }

    public Usuario traerUsuarioPorId(int id) {
        return usuarioJPA.findUsuario(id);
    }

    public void editarUsuario(Usuario usu) throws Exception {
        try {
            usuarioJPA.edit(usu);
        } catch (Exception e) {
        }

    }

    public void elimiarUsuario(int id) {
        try {
            usuarioJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Usuario traerUsuarioPorUserName(String user) throws Exception {
        return usuarioJPA.findUserByUserName(user);
    }

    public void crearOdontologo(Odontologo odonto) {
        odontoJPA.create(odonto);
    }

    public List<Odontologo> traerOdontologos() {
        return odontoJPA.findOdontologoEntities();
    }

    public Odontologo traerOdontologo(int id) {
        return odontoJPA.findOdontologo(id);
    }

    public void editarOdontologo(Odontologo odonto) throws Exception {
        odontoJPA.edit(odonto);
    }

    public void eliminarOdontologo(int id) throws NonexistentEntityException {
        odontoJPA.destroy(id);
    }

    public List<Paciente> traerPacientes() {
        return pacienteJPA.findPacienteEntities();
    }

    public void crearPaciente(Paciente pacien) {
        pacienteJPA.create(pacien);
    }

    public Paciente traerPaciente(int id) {
        return pacienteJPA.findPaciente(id);
    }

    public void editarPaciente(Paciente pacien) {
        try {
            pacienteJPA.edit(pacien);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void eliminarPaciente(int id) throws NonexistentEntityException {
        pacienteJPA.destroy(id);
    }

    public void crearResponsable(Responsable respon) {
        responsableJPA.create(respon);
    }

    public List<Responsable> traerResponsables() {
        return responsableJPA.findResponsableEntities();
    }

    public void crearTurno(Turno turno) {
        turnoJPA.create(turno);
    }

    public List<Turno> traerTurnos() {
        return turnoJPA.findTurnoEntities();
    }

}
