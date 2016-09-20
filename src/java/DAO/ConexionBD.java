
package DAO;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
public class ConexionBD {
 private Statement sql;
    private Connection db;
    private DatabaseMetaData dbmd;
    private String query;
    private ResultSet respuesta;

    //cambiar insert para tablas correspondientes

    public ConexionBD() throws SQLException{
        try {

            query = new String();
            Class.forName("org.postgresql.Driver");
            db = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Recyket", "Chapu7", "chapu7");
            sql = db.createStatement();
        } catch (ClassNotFoundException ex) {
            System.err.println("Error! cosntructor "+ex.toString());
        } catch (SQLException ex) {
            System.err.println("Error! constructor sql");
        }
    }

    public int insertarUsuario(String nombre, String apaterno, String amaterno, String sexo, String pais, String fnac){
    
        try {
            int i = 0;
            //sql = db.createStatement();
            query = new String();
            query = "INSERT INTO alumno (nombre, apellido_paterno, apellido_materno, sexo, pais, fnac) VALUES ('"+nombre+"', '"+apaterno+"', '"+amaterno+"', '"+sexo+"', '"+pais+"', '"+fnac+"')";
            //System.out.println("query> "+query);
            i = sql.executeUpdate(query);
            return(i);
        } catch (SQLException ex) {
            System.err.println("Error!");
        }
        return(-1);
    }
  
    
    public int insertarTelefono(int id_tipo, int telefono){
        try {
            int i = 0;
            query = new String();
            query = "INSERT INTO telefono (id_tipo, telefono) VALUES ("+id_tipo+","+telefono+")";
            i = sql.executeUpdate(query);
            return(i);
        } catch (SQLException ex) {
            System.err.println("Error!");
        }
        return(-1);
    }

      public int insertarMail(int id_tmail, String mail){
        try {
            int i = 0;
            query = new String();
            query = "INSERT INTO mail (id_tmail, mail) VALUES ("+id_tmail+","+mail+")";
            i = sql.executeUpdate(query);
            return(i);
        } catch (SQLException ex) {
            System.err.println("Error!");
        }
        return(-1);
    }

    public int insertarUsuario_Telefono(int id_usuario, int id_telefono) {
        try {
            int i = 0;
            query = new String();
            query = "INSERT INTO usuario_telefono (id_usuario, id_telefono) VALUES ("+id_usuario+", "+id_telefono+")";
            i = sql.executeUpdate(query);
            return(i);
        } catch (SQLException ex) {
            System.err.println("Error!");
        }
        return(-1);
    }

    public int insertarUsuario_Mail(int id_usuario, int id_mail) {
        try {
            int i = 0;
            query = new String();
            query = "INSERT INTO usuario_telefono (id_usuario, id_mail) VALUES ("+id_usuario+", "+id_mail+")";
            i = sql.executeUpdate(query);
            return(i);
        } catch (SQLException ex) {
            System.err.println("Error!");
        }
        return(-1);
    }

      public int insertarAmigo(String n_amigo, String ap_amigo, String am_amigo){
        try {
            int i = 0;
            //sql = db.createStatement();
            query = new String();
            query = "INSERT INTO amigo (n_amigo, ap_amigo, ap_amigo) VALUES ('"+n_amigo+"', '"+ap_amigo+"', '"+am_amigo+"')";
            //System.out.println("query> "+query);
            i = sql.executeUpdate(query);
            return(i);
        } catch (SQLException ex) {
            System.err.println("Error!");
        }
        return(-1);
    }

    public int obtenerIdUsuario(String nombre){
        try {
            query = "select id_usuario from usuario where nombre='" + nombre + "'";
            respuesta = sql.executeQuery(query);
            while (respuesta.next()) {
                query = respuesta.getString(1);
            }
            return(Integer.parseInt(query));
        } catch (SQLException ex) {
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

      public int obtenerIdMail(String mail){
        try {
            query = "select id_mail from mail where mail='" + mail + "'";
            respuesta = sql.executeQuery(query);
            while (respuesta.next()) {
                query = respuesta.getString(1);
            }
            return(Integer.parseInt(query));
        } catch (SQLException ex) {
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public int obtenerIdTelefono(int telefono) {
        try {
            query = "select id_telefono from telefono where telefono=" + telefono + "";
            respuesta = sql.executeQuery(query);
            while (respuesta.next()) {
                query = respuesta.getString(1);
            }
            return(Integer.parseInt(query));
        } catch (SQLException ex) {
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public int obtenerIdAmigo(String n_amigo) {
        try {
            query = "select id_amigo from amigo where n_amigo='" + n_amigo + "'";
            respuesta = sql.executeQuery(query);
            while (respuesta.next()) {
                query = respuesta.getString(1);
            }
            return(Integer.parseInt(query));
        } catch (SQLException ex) {
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

     public int obtenerIdTtelefono(String nombre_tipo) {
        try {
            query = "select id_tipo from tipo where nombre_tipo='" + nombre_tipo + "'";
            respuesta = sql.executeQuery(query);
            while (respuesta.next()) {
                query = respuesta.getString(1);
            }
            return(Integer.parseInt(query));
        } catch (SQLException ex) {
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

       public int obtenerIdTMail(String descripcion) {
        try {
            query = "select id_tmail from tipo_mail where descripcion='" + descripcion + "'";
            respuesta = sql.executeQuery(query);
            while (respuesta.next()) {
                query = respuesta.getString(1);
            }
            return(Integer.parseInt(query));
        } catch (SQLException ex) {
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public void cerrarConexion(){
        try {
            query = new String();
            respuesta.close();
            sql.close();
        } catch (SQLException ex) {
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

      public int insertarLogin(int id_usuario, String usuario, String contrasena ){
        try {
            int i = 0;
            //sql = db.createStatement();
            query = new String();
            query = "INSERT INTO login (id_usuario, usuario, contrasena) VALUES ("+id_usuario+", '"+usuario+"', '"+contrasena+"')";
            //System.out.println("query> "+query);
            i = sql.executeUpdate(query);
            return(i);
        } catch (SQLException ex) {
            System.err.println("Error!");
        }
        return(-1);
    }


}
