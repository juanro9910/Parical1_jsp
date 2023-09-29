
package com.example;

import java.util.ArrayList;


public class Medico {
    
    private String codigo;
    private String nombreMedico;
    private int consultorio;
    private String especialidadMedico;
    private String correo;
    private ArrayList<Agenda> agenda;

    public Medico(String codigo, String nombreMedico, int consultorio, String especialidadMedico, String correo) {
        this.codigo = codigo;
        this.nombreMedico = nombreMedico;
        this.consultorio = consultorio;
        this.especialidadMedico = especialidadMedico;
        this.correo = correo;
        this.agenda = new ArrayList();
    }

    public Medico() {
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombreMedico() {
        return nombreMedico;
    }

    public void setNombreMedico(String nombreMedico) {
        this.nombreMedico = nombreMedico;
    }

    public int getConsultorio() {
        return consultorio;
    }

    public void setConsultorio(int consultorio) {
        this.consultorio = consultorio;
    }

    public String getEspecialidadMedico() {
        return especialidadMedico;
    }

    public void setEspecialidadMedico(String especialidadMedico) {
        this.especialidadMedico = especialidadMedico;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public ArrayList<Agenda> getAgenda() {
        return agenda;
    }

    public void setAgenda(ArrayList<Agenda> agenda) {
        this.agenda = agenda;
    }

    
    
}
