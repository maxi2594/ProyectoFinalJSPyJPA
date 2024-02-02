package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
public class Turno implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_turno;
    @Temporal(TemporalType.DATE)
    private Date fechaTurno;
    private String hora_inicio;
    private String hora_fin;
    @ManyToOne
    @JoinTable(name = "id_odonto")
    private Odontologo odonto;
    @ManyToOne
    @JoinTable(name = "id_pacien")
    private Paciente pacien;

    public Turno() {
    }

    public Turno(int id_turno, String hora_inicio, String hora_fin) {
        this.id_turno = id_turno;
        this.hora_inicio = hora_inicio;
        this.hora_fin = hora_fin;
    }

    public int getId_turno() {
        return id_turno;
    }

    public void setId_turno(int id_turno) {
        this.id_turno = id_turno;
    }

    public String getHora_inicio() {
        return hora_inicio;
    }

    public void setHora_inicio(String hora_inicio) {
        this.hora_inicio = hora_inicio;
    }

    public String getHora_fin() {
        return hora_fin;
    }

    public void setHora_fin(String hora_fin) {
        this.hora_fin = hora_fin;
    }

        public Date getFechaTurno() {
        return fechaTurno;
    }

    public void setFechaTurno(Date fechaTurno) {
        this.fechaTurno = fechaTurno;
    }

    public Odontologo getOdonto() {
        return odonto;
    }

    public void setOdonto(Odontologo odonto) {
        this.odonto = odonto;
    }

    public Paciente getPacien() {
        return pacien;
    }

    public void setPacien(Paciente pacien) {
        this.pacien = pacien;
    }
    
    
}
