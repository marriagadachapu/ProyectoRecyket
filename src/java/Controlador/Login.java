/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Controlador;

import DAO.ConexionBD;
import java.sql.SQLException;

/**
 *
 * @author Administrador
 */
public class Login {


    private String usuario;
    private String contrasena;

    public Login(String usuario, String contrasena) {
     
        this.usuario = usuario;
        this.contrasena = contrasena;
    }

   
     

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }


  public void insertarLogin(int id_usario, String usuario, String contrasena) throws SQLException{
        ConexionBD conexion = new ConexionBD();
                int id_usuario= conexion.obtenerIdUsuario(usuario);

            conexion.insertarLogin(id_usuario, usuario, contrasena);




        
        }

}
