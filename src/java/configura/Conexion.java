/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package configura;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author javeeto
 */
public class Conexion {
    Connection conexion=null;
    public Conexion() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/colegio", "usercode", "password");
        } catch(ClassNotFoundException | SQLException e){
            System.err.println("Error:"+e);
        }
    }
    
    public Connection getConnection(){
        return conexion;    
    }    
}
