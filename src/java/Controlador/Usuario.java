
package Controlador;

import DAO.ConexionBD;
import java.sql.SQLException;
//import java.util.ArrayList;


public class Usuario {

    private String nombre;
    private String apaterno;
    private String amaterno;
    private String sexo;
    private String fnac;
    private String pais;
    private String mail;
    private int telefono;
   // private ArrayList<mail> mail;
    //private ArrayList <telefono> telefono;

    public Usuario(){
        nombre = new String();
        apaterno = new String();
        amaterno = new String();
        fnac = new String();
        sexo = new String();
        pais = new String();
        mail = new String();
        telefono = 0;
        //mail = new ArrayList<mail>();
        //telefono = new ArrayList<telefono>();
    }

      public Usuario(String nombre, String apaterno, String amaterno, String sexo, String pais, String fnac, String mail, int telefono) {
        this.nombre = nombre;
        this.apaterno = apaterno;
        this.amaterno = amaterno;
        this.sexo = sexo;
        this.pais = pais;
        this.mail = mail;
        this.telefono = telefono;
        this.fnac = fnac;

    }

   
    public String getNombre() {
        return nombre;
    }

    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

   
    public String getApaterno() {
        return apaterno;
    }

    
    public void setApaterno(String apaterno) {
        this.apaterno = apaterno;
    }

    
    public String getAmaterno() {
        return amaterno;
    }

    
    public void setAmaterno(String amaterno) {
        this.amaterno = amaterno;
    }

    
    public String getSexo() {
        return sexo;
    }

      public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    
    public String getPais() {
        return pais;
    }

    
    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

   /* public ArrayList<mail> getMail() {
        return mail;
    }

    public void setMail(ArrayList<mail> mail) {
        this.mail = mail;
    }

    public ArrayList<telefono> getTelefono() {
        return telefono;
    }

    public void setTelefono(ArrayList<telefono> telefono) {
        this.telefono = telefono;
    }
*/

    public String getFnac() {
        return fnac;
    }

    public void setFnac(String fnac) {
        this.fnac = fnac;
    }

  public void insertarUsuario() throws SQLException{
        ConexionBD conexion = new ConexionBD();
        conexion.insertarUsuario(nombre, apaterno, amaterno, sexo, pais, fnac);
       
           
          






          //conexion.cerrarConexion();
        }


    }



