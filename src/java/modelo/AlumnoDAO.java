/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import configura.Conexion;
import interfaces.AlumnoCRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author javeeto
 */
public class AlumnoDAO implements AlumnoCRUD {
    
    private Conexion conObj;
    private Connection conexion;
    private PreparedStatement ps;
    private ResultSet rs;
    private Alumno alumnoObject = new Alumno();
    
    public AlumnoDAO(){
        conObj=new Conexion();
        conexion=conObj.getConnection();
    }

    @Override
    public List listar() {
        ArrayList<Alumno> lista = new ArrayList();
        String sql = "select * from alumnos";
        try {            
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Alumno alumnoObj = new Alumno();
                alumnoObj.setId(rs.getInt("id"));
                alumnoObj.setApellidos(rs.getString("apellidos"));
                alumnoObj.setNombres(rs.getString("nombres"));
                alumnoObj.setDocumento(rs.getString("documento"));
                alumnoObj.setFechanacimiento(rs.getString("fechanacimiento"));
                alumnoObj.setGenero(rs.getInt("genero"));
                

                lista.add(alumnoObj);
            }
        } catch (Exception e) {
            System.err.println("Error:" + e);

        }
        return lista;        
    }

    @Override
    public Alumno list(int id) {
        ArrayList<Alumno> lista = new ArrayList();
        String sql = "select * from alumnos where id=?";
        try {
            
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                
                alumnoObject.setId(rs.getInt("id"));
                alumnoObject.setApellidos(rs.getString("apellidos"));
                alumnoObject.setNombres(rs.getString("nombres"));
                alumnoObject.setDocumento(rs.getString("documento"));
                alumnoObject.setFechanacimiento(rs.getString("fechanacimiento"));
                alumnoObject.setGenero(rs.getInt("genero"));
                
            }
        } catch (Exception e) {
            System.err.println("Error:" + e);

        }
        return alumnoObject;        
    }

    @Override
    public boolean add(Alumno alumnoObj) {
        String sql = "insert into alumnos(documento,nombres,apellidos,genero,fechanacimiento) values(?,?,?,?,?)";
        try {
            
            ps = conexion.prepareStatement(sql);
            ps.setString(1, alumnoObj.getDocumento());
            ps.setString(2, alumnoObj.getNombres());
            ps.setString(3, alumnoObj.getApellidos());
            ps.setInt(4, alumnoObj.getGenero());
            ps.setString(5, alumnoObj.getFechanacimiento());
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println("Error al insertar:" + e);

        }
        return false;        
    }

    @Override
    public boolean edit(Alumno alumnoObj) {
        String sql = "update alumnos set documento=?,nombres=?,apellidos=?,genero=?,fechanacimiento=? where id=?";
         try {
            
            ps = conexion.prepareStatement(sql);
            ps.setString(1, alumnoObj.getDocumento());
            ps.setString(2, alumnoObj.getNombres());
            ps.setString(3, alumnoObj.getApellidos());
            ps.setInt(4, alumnoObj.getGenero());
            ps.setString(5, alumnoObj.getFechanacimiento());
            ps.setInt(6, alumnoObj.getId());
            
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println("Error al actualizar:" + e);

        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from alumnos where id=?";
         try {
            
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println("Error al eliminar:" + e);

        }
        return false;    }
    
}
