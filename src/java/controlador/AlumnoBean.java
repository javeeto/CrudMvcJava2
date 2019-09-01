/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.util.List;
import modelo.Alumno;
import modelo.AlumnoDAO;

/**
 *
 * @author javeeto
 */
public class AlumnoBean {
    private List<Alumno> alumnos;

    public List<Alumno> getAlumnos() {
        AlumnoDAO alumObj=new AlumnoDAO();
        return alumObj.listar();       
    }

    public void setAlumnos(List<Alumno> alumnos) {
        this.alumnos = alumnos;
    }
    
    
}
