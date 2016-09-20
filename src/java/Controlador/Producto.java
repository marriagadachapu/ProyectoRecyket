/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Controlador;

import java.util.ArrayList;

/**
 *
 * @author Administrador
 */
public class Producto {
 private String n_amigo;
    private String ap_amigo;
    private String am_amigo;
    private ArrayList<Sociedad> mail;
    private ArrayList<Persona> telefono;

    public Producto(){
        n_amigo = new String();
        ap_amigo = new String();
        am_amigo = new String();
        mail = new ArrayList<Sociedad>();
        telefono = new ArrayList<Persona>();

    }

      public Producto(String n_amigo, String ap_amigo, String am_amigo, ArrayList<Sociedad> mail, ArrayList<Persona> telefono) {
        this.n_amigo = n_amigo;
        this.ap_amigo = ap_amigo;
        this.am_amigo = am_amigo;
        this.mail = mail;
        this.telefono = telefono;

    }

    public String getAm_amigo() {
        return am_amigo;
    }

    public void setAm_amigo(String am_amigo) {
        this.am_amigo = am_amigo;
    }

    public String getAp_amigo() {
        return ap_amigo;
    }

    public void setAp_amigo(String ap_amigo) {
        this.ap_amigo = ap_amigo;
    }

    public String getN_amigo() {
        return n_amigo;
    }

    public void setN_amigo(String n_amigo) {
        this.n_amigo = n_amigo;
    }

    public ArrayList<Sociedad> getMail() {
        return mail;
    }

    public void setMail(ArrayList<Sociedad> mail) {
        this.mail = mail;
    }

    public ArrayList<Persona> getTelefono() {
        return telefono;
    }

    public void setTelefono(ArrayList<Persona> telefono) {
        this.telefono = telefono;
    }
    

}
