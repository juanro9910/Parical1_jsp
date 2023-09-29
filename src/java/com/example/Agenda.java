
package com.example;


public class Agenda {
    private String codigo;
    private int dia;
    private int mes;
    private int anho;
    private int hora;
    private int minuto;
    private String descripcion;

    public Agenda(String codigo, int dia, int mes, int anho, int hora, int minuto, String descripcion) {
        this.codigo = codigo;
        this.dia = dia;
        this.mes = mes;
        this.anho = anho;
        this.hora = hora;
        this.minuto = minuto;
        this.descripcion = descripcion;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        this.dia = dia;
    }

    public int getMes() {
        return mes;
    }

    public void setMes(int mes) {
        this.mes = mes;
    }

    public int getAnho() {
        return anho;
    }

    public void setAnho(int anho) {
        this.anho = anho;
    }

    public int getHora() {
        return hora;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }

    public int getMinuto() {
        return minuto;
    }

    public void setMinuto(int minuto) {
        this.minuto = minuto;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
}
