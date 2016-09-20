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
public class Mail {

     private int id_tmail;
    private String mail;
  

    public Mail(int id_tmail, String mail) {
        this.id_tmail = id_tmail;
        this.mail = mail;
        
    }

    public int getId_tmail() {
        return id_tmail;
    }

    public void setId_tmail(int id_tmail) {
        this.id_tmail = id_tmail;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

  

     public void insertarMail(int id_tmail, String mail) throws SQLException{
        ConexionBD conexion = new ConexionBD();


            conexion.insertarMail(getId_tmail(), getMail());




          conexion.cerrarConexion();
        }


}
