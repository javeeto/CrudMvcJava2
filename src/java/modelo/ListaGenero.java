/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.List;

/**
 *
 * @author javeeto
 */
public class ListaGenero {
    private List<Genero> generos;

    public List<Genero> getGeneros() {
        return generos;
    }

    public void setGeneros(List<Genero> generos) {
        this.generos = generos;
    }
    @Override
    
    public String toString() {
        return "ListaGenero{" +
                " generos=" + generos +
                '}';
    }    
    
}
