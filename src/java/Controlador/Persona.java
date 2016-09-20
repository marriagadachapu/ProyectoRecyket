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
public class Persona {

    private int telefono;
    private int id_tipo;

    public Persona(int telefono, int id_tipo) {
        this.telefono = telefono;
        this.id_tipo = id_tipo;
    }

    public int getId_tipo() {
        return id_tipo;
    }

    public void setId_tipo(int id_tipo) {
        this.id_tipo = id_tipo;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

  public void insertarTelefono(int id_tipo, int telefono) throws SQLException{
        ConexionBD conexion = new ConexionBD();


            conexion.insertarTelefono(getId_tipo(), getTelefono());




          conexion.cerrarConexion();
        }

}
