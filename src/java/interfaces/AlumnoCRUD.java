/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import java.util.List;
import modelo.Alumno;

/**
 *
 * @author javeeto
 */
public interface AlumnoCRUD {
    
    public List listar();
    public Alumno list(int id);
    public boolean add(Alumno alumnoObj);
    public boolean edit(Alumno alumnoObj);
    public boolean eliminar(int id);
}
