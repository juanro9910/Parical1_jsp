
package com.example;

import java.util.ArrayList;


public class ListaMedicos {
    
    private ArrayList<Medico> medicos;

    public ListaMedicos() {
        medicos = new ArrayList();
    }
    
    public void addMedico (Medico medico){
        medicos.add(medico);
    }
    
     public ArrayList<Medico> getMedicos() {
        return medicos;
    }
     
     public Medico getMedico(String codigoMedico) {
        Medico m = null;
        for (int i=0; i<medicos.size(); i++) {
            Medico medico = medicos.get(i);
            if (medico.getCodigo().equals(codigoMedico)) {
                m=medico;
                break;
            }
        }
        return m;
    }
}
