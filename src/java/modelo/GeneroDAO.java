/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import configura.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author javeeto
 */
public class GeneroDAO {
        private Conexion conObj;
    private Connection conexion;
    private PreparedStatement ps;
    private ResultSet rs;
    private Genero generoObject = new Genero();
    
    public GeneroDAO(){
        conObj=new Conexion();
        conexion=conObj.getConnection();
    }

    
    public List listar() {
        ArrayList<Genero> lista = new ArrayList();
        String sql = "select * from generos";
        try {            
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Genero generoObj = new Genero();
                generoObj.setId(rs.getInt("id"));                
                generoObj.setNombre(rs.getString("nombre"));
                generoObj.setNombrecorto(rs.getString("nombrecorto"));          
                lista.add(generoObj);
            }
        } catch (Exception e) {
            System.err.println("Error:" + e);

        }
        return lista;        
    }
}
